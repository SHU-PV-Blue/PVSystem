package com.shupv.controller;

import com.shupv.service.SystemService;
import com.shupv.tools.JSONStatus;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dell on 2017/4/22.
 */
@Controller
@RequestMapping(value = "register")
public class RegisterController {
    @Autowired
    private SystemService systemService;
    @RequestMapping(value = "")
    public String home(){
        return "register";
    }

    @RequestMapping(value = "/checkUser")
    @ResponseBody
    public String checkUser(@RequestParam String userId){
        JSONStatus jsonStatus = new JSONStatus(systemService.checkUserById(userId));
        return jsonStatus.toString();
    }


    /**
     * String s为JSON字符串，
     * key:userId
     * key:password
     * key:nickname
     * 以上三点为必填字段,其余字段为mail,phoneNum,userName
     */
    @RequestMapping(value = "/register")
    public String register(@RequestParam String id, String password,
                           String nickname, HttpServletResponse response,
                           HttpServletRequest request){
        if (systemService.register(id, password, nickname)){
            Cookie cookie = new Cookie("pvsystemCookie",id);
            cookie.setMaxAge(60*60*24*3);
            response.addCookie(cookie);
            return "redirect:/home";
        } else {
            request.getSession().setAttribute("registerMsg", "该用户已存在");
            return "redirect:/register";
        }
    }
}

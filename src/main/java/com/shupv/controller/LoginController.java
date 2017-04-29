package com.shupv.controller;

import com.shupv.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by zihua on 17-3-29.
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "")
    public String loginCheck(@RequestParam String userId, String password,
                             HttpServletResponse response, HttpServletRequest request) {
        boolean isOk = systemService.checkUserByIdAndPwd(userId, password);
        if (isOk){
            Cookie cookie = new Cookie("pvsystemCookie", userId);
            cookie.setMaxAge(60*60*24*3);
            response.addCookie(cookie);
            return "redirect:/home";
        }
        else {
            request.getSession().setAttribute("msg","用户不存在");
            return "redirect:/";
        }
    }
}

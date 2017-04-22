package com.shupv.controller;

import com.shupv.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by zihua on 17-3-29.
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "")
    public String loginCheck(@RequestParam String userId, String password,
                             HttpServletResponse response) {
        boolean isOk = systemService.checkUserByIdAndPwd(userId, password);
        if (isOk){
            Cookie cookie = new Cookie("id", userId);
            cookie.setMaxAge(60*60*24*3);
            response.addCookie(cookie);
            return "redirect:/home";
        }
        else {
            return "redirect:/";
        }
    }
}

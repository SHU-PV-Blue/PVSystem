package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zihua on 17-3-29.
 */
@Controller
@RequestMapping("login")
public class LoginController {
    @RequestMapping(value = "")
    public String home(){
        return "home";
    }
}

package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zihua on 17-3-29.
 */
@Controller
@RequestMapping("home")
public class LoginController {
    @RequestMapping()
    public String index(){
        return "home";
    }
}

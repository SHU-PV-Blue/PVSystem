package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Dell on 2017/4/29.
 */
@Controller
public class MainController {
    @RequestMapping(value = "/")
    public String index(){
        return "/";
    }
}

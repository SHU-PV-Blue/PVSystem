package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dawang on 17-4-16.
 */
@Controller
@RequestMapping(value = "home")
public class SystemController {
    @RequestMapping(value = "/information")
    public String information() {
        return "information";
    }
    @RequestMapping(value = "/project")
    public String project() {
        return "project";
    }
}


package com.shupv.controller;

import com.shupv.service.ComponentService;
import com.shupv.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chengs on 17-5-6.
 */
@Controller
@RequestMapping(value = "/component", produces = "text/html;charset=utf-8")
public class ComponentController {
    @Autowired
    private ComponentService componentService;

    @RequestMapping("/createComponent")
    @ResponseBody
    public String createComponent() {
        return componentService.createComponent();
    }

    @RequestMapping("/queryComponent")
    @ResponseBody
    public String queryComponent() {
        return componentService.queryComponent();
    }
}

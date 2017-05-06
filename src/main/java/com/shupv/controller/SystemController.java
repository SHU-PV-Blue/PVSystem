package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by dawang on 17-4-16.
 */
@Controller
@RequestMapping(value = "home")
public class SystemController {
    @RequestMapping(value = "")
    public String home() {
        return "home2";
    }

    @RequestMapping(value = "/information")
    public String information() {
        return "information";
    }

    @RequestMapping(value = "/project")
    public String project() {
        return "project";
    }

    @RequestMapping(value = "/weather")
    public String weather() {
        return "weather";
    }

    @RequestMapping(value = "/zjxx")
    public String zjxx() {
        return "zjxx";
    }

    @RequestMapping(value = "/fwqj")
    public String fwqj() {
        return "fwqj";
    }

    @RequestMapping(value = "/zjbj")
    public String zjbj() {
        return "zjbj";
    }

    @RequestMapping(value = "/diyacesheji")
    public String diyacesheji() {
        return "diyacesheji";
    }

    @RequestMapping(value = "/gaoyc")
    public String gaoyc() {
        return "gaoyc";
    }

    @RequestMapping(value = "/xiaolu")
    public String xiaolu() {
        return "xiaolu";
    }

    @RequestMapping(value = "/xiaoyi")
    public String xiaoyi() {
        return "xiaoyi";
    }

    @RequestMapping(value = "/baogao")
    public String baogao() {
        return "baogao";
    }

    @RequestMapping(value = "/forget")
    public String forget() {
        return "forget";
    }


    @RequestMapping(value="/list")
    public  String list(){ return "list";}
    @RequestMapping(value = "/forget2")
    public String forget2() {
        return "forget2";
    }

    @RequestMapping(value = "/newProject")
    public String newProject(String projectName, HttpServletResponse response) {
        System.out.println(projectName);
        Cookie curProject = new Cookie("curProject", projectName);
        response.addCookie(curProject);
        return "newProject";
    }

    @RequestMapping(value = "/person")
    public String persion() {
        return "person";
    }

    /**
     * 点击“立即注册”后进入到register.jsp页面
     *
     * @return
     */
    @RequestMapping(value = "/register")
    public String register() {
        return "register";
    }


}


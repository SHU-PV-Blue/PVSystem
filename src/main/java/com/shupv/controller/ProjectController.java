package com.shupv.controller;

import com.shupv.service.ProjectService;
import com.shupv.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chengs on 17-4-22.
 */

@Controller
@RequestMapping("project")
public class ProjectController {
    @Autowired
    private SystemService service;
    @Autowired
    private ProjectService projectService;

    @RequestMapping("/createProject")
    @ResponseBody
    public String createProject(@CookieValue("pvsystemCookie") String cookieValue, String projectName) {
        String userId = cookieValue;
        return service.createProject(userId, projectName);
    }

    @RequestMapping(value = "/current", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String getCurrentProject(@CookieValue("pvsystemCookie") String cookie,
                                    @RequestParam(defaultValue = "###latest###") String projectName) {
        String userId = cookie;
        return projectService.getCurrentProject(userId, projectName);
    }

    @RequestMapping(value = "/checkProjectName", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String checkProjectName(@CookieValue("pvsystemCookie") String cookie, String projectName) {
        String userId = cookie;
        return projectService.ckeckProjectName(userId, projectName);
    }


    /**
     * 点击“项目信息”后，将项目基本信息保存到数据库，并重定向到新建项目页面
     * @return
     */
    @RequestMapping("/projectInfo")
    public String projectInfo(){
        return "home";
    }

}

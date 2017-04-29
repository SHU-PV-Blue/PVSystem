package com.shupv.controller;

import com.shupv.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by chengs on 17-4-22.
 */

@Controller
@RequestMapping("project")
public class ProjectController {
    @Autowired
    private SystemService service;

    @RequestMapping("/createProject")
    @ResponseBody
    public String createProject(@CookieValue("pvsystemCookie") String cookieValue) {
        String userId = cookieValue;
        return service.createProject(userId);
    }

    @RequestMapping("/updateProjectBaseInfo")
    @ResponseBody
    public String createProject(@CookieValue("pvsystemCookie") String cookieValue, String BaseInfo) {
        String userId = cookieValue;
        return service.createProject(userId);
    }


//    /**
//     * 点击“项目信息”后，将项目基本信息保存到数据库，并重定向到
//     * @return
//     */
//    @RequestMapping("/projectInfo")
//    public String projectInfo(){
//
//    }

}

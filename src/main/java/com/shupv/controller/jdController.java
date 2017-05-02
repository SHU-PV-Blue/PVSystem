package com.shupv.controller;

import com.shupv.service.ProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by cc on 17-5-2.
 */
@Controller
@RequestMapping("a")
public class jdController {
    @RequestMapping("/a")
    @ResponseBody
    public String jd(String json) {
        ProjectService projectService=new ProjectService();

        return projectService.getfwqj(json);
    }

}

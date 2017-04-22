package com.shupv.controller;

import com.shupv.service.SystemService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Dell on 2017/4/22.
 */
@Controller
@RequestMapping(value = "ajax")
public class AjaxController {
    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "/home")
    @ResponseBody
    public String getRoleAndNickname(@CookieValue("pvsystemCookie") String userId) {
        return systemService.getNicknameAndRolenameByUserId(userId);
    }
}

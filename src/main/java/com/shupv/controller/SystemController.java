package com.shupv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dawang on 17-4-16.
 */
@Controller
@RequestMapping(value = "home")
public class SystemController {
    @RequestMapping(value = "")
    public String home(){
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
    @RequestMapping(value="/weather")
    public String weather(){
        return "weather";
    }
    @RequestMapping(value="/zjxx")
    public String zjxx(){
        return "zjxx";
    }
    @RequestMapping(value="/fwqj")
    public String fwqj(){
        return "fwqj";
    }
    @RequestMapping(value ="/zjbj" )
    public String zjbj(){
        return "zjbj";
    }
    @RequestMapping(value="/diyacesheji")
    public String diyacesheji(){
        return "diyacesheji";
    }
    @RequestMapping(value="/gaoyc")
    public String gaoyc(){
        return "gaoyc";
    }
    @RequestMapping(value="/xiaolu")
    public String xiaolu(){
        return "xiaolu";
    }
    @RequestMapping(value="/xiaoyi")
    public String xiaoyi(){
        return "xiaoyi";
    }
    @RequestMapping(value="/baogao")
    public String baogao(){
        return "baogao";
    }
    @RequestMapping(value="/forget")
    public String forget(){
        return "forget";
    }
<<<<<<< HEAD
<<<<<<< HEAD
    @RequestMapping(value="/forget2")
    public String forget2() { return "forget2";}
=======
    
=======

>>>>>>> aa5d2186734b2f3736da1f6ddb6c1df5c9cab152
    /**
     * 点击“立即注册”后进入到register.jsp页面
     * @return
     */
    @RequestMapping(value = "/register")
    public String register() {
        return "register";
    }
>>>>>>> e231054ae23ab6c32fae970eb38b9891e78e8619

}


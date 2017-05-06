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
    /*
     前两个为测试用接口,为了简化,不需要输入参数
    */
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
    @RequestMapping("/createCI")
    @ResponseBody
    /*
     后一个为正式插入接口,需要输入参数
     CI表示:CentralizedInverter:集中式逆变器
    */
    public String createCI(@RequestParam  String manufacturersName,//厂家
          String model,//型号
          int maxDCInputPower,//最大直流输入功率
          int maxInputVoltage,//最大效率
          int startVoltage,//启动电压
          int mppLVL,  // LVL(Lower Voltage Limit, 电压下限)
          int mppVL,  // VL(Voltage Limit, 电压上限)
          int maxDCInputCurrent, //最大直流输入电流
          int ratedACOutputPower,//额定交流输出功率
          int maxOutputPower,//最大输出功率
          int maxACOutputCurrent,//最大交流输出电流
          int ratedGridVoltage,//最大交流输出电流
          double maxEfficiency,//最大效率,
                         HttpServletRequest request) {
        return componentService.createCI(
        manufacturersName,//厂家
        model,//型号
        maxDCInputPower,//最大直流输入功率
        maxInputVoltage,//最大效率
        startVoltage,//启动电压
        mppLVL,  // LVL(Lower Voltage Limit, 电压下限)
        mppVL,  // VL(Voltage Limit, 电压上限)
        maxDCInputCurrent, //最大直流输入电流
        ratedACOutputPower,//额定交流输出功率
        maxOutputPower,//最大输出功率
        maxACOutputCurrent,//最大交流输出电流
        ratedGridVoltage,//最大交流输出电流
        maxEfficiency//最大效率,
        );
    }
}

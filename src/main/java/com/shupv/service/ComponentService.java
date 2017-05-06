package com.shupv.service;

import com.shupv.dao.ComponentDao;

import com.shupv.entity.CentralizedInverter;
import com.shupv.tools.JSONArrayCentralizedInverter;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by chengs on 17-5-6.
 */
@Service
public class ComponentService {

    @Autowired
    private ComponentDao componentDao;

    public String createComponent() {
        return componentDao.createComponent().toString();
    }

    public String queryComponent() {
        List<CentralizedInverter> result=componentDao.queryComponent();
        if(result==null){
            return new JSONArray().put(new JSONObject().put("status","false")).toString();
        }else{
            return JSONArrayCentralizedInverter.formatCentralizedInverterArray(result).toString();
        }
    }

    public String createCI(String manufacturersName, String model, int maxDCInputPower, int maxInputVoltage, int startVoltage, int mppLVL, int mppVL, int maxDCInputCurrent, int ratedACOutputPower, int maxOutputPower, int maxACOutputCurrent, int ratedGridVoltage, double maxEfficiency) {
        return componentDao.createCI(
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
        ).toString();
    }
}

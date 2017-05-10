package com.shupv.tools;

import com.shupv.entity.CentralizedInverter;
import com.shupv.entity.Project;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

import static com.shupv.tools.SecurityTools.nullCheck;

/**
 * Created by chengs on 17-5-6.
 */
public class JSONArrayCentralizedInverter {
    public static JSONArray formatCentralizedInverterArray(List<CentralizedInverter> centralizedInverterList) {
        JSONArray jsonArray=new JSONArray();
        for(int i=0;i<centralizedInverterList.size();i++){
            JSONObject jsonObject=new JSONObject();
            jsonObject.put("manufacturersName",nullCheck(centralizedInverterList.get(i).getManufacturersName()));
            jsonObject.put("model",nullCheck(centralizedInverterList.get(i).getModel()));
            jsonObject.put("maxDCInputPower",nullCheck(centralizedInverterList.get(i).getMaxDCInputPower()));
            jsonObject.put("maxInputVoltage",nullCheck(centralizedInverterList.get(i).getMaxInputVoltage()));
            jsonObject.put("startVoltage",nullCheck(centralizedInverterList.get(i).getStartVoltage()));
            jsonObject.put("mppLVL",nullCheck(centralizedInverterList.get(i).getMppLVL()));
            jsonObject.put("mppVL",nullCheck(centralizedInverterList.get(i).getMppVL()));
            jsonObject.put("maxDCInputCurrent",nullCheck(centralizedInverterList.get(i).getMaxDCInputCurrent()));
            jsonObject.put("ratedACOutputPower",nullCheck(centralizedInverterList.get(i).getRatedACOutputPower()));
            jsonObject.put("maxOutputPower",nullCheck(centralizedInverterList.get(i).getMaxOutputPower()));
            jsonObject.put("maxACOutputCurrent",nullCheck(centralizedInverterList.get(i).getMaxACOutputCurrent()));
            jsonArray.put(jsonObject);
        }

        jsonArray.put(new JSONObject().put("status","true"));
        return jsonArray;
    }


}

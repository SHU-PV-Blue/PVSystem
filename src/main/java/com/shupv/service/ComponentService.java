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
}

package com.shupv.tools;

import org.json.JSONObject;

/**
 * Created by Dell on 2017/4/22.
 */
public class JSONStatus extends JSONObject{
    public JSONStatus(){
    }

    public JSONStatus(boolean b){
        this.put("success", b);
    }
}

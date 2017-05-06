package com.shupv.dao;

import com.shupv.entity.CentralizedInverter;
import com.shupv.entity.Project;
import com.shupv.entity.User;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

import static com.shupv.tools.SecurityTools.nullCheck;

/**
 * Created by chengs on 17-5-6.
 */
@Repository
public class ComponentDao extends BaseDao {

    public JSONObject createComponent() {
        JSONObject result = new JSONObject();
        try {
            CentralizedInverter centralizedInverter=new CentralizedInverter();
            centralizedInverter.setManufacturersName("阳光电源");
            centralizedInverter.setModel("SG800MX");
            centralizedInverter.setMaxDCInputPower(900000);
            centralizedInverter.setMaxInputVoltage(1000);
            centralizedInverter.setStartVoltage(565);
            centralizedInverter.setMppLVL(545);
            centralizedInverter.setMppVL(820);
            centralizedInverter.setMaxDCInputCurrent(1600);
            centralizedInverter.setRatedACOutputPower(800000);
            centralizedInverter.setMaxOutputPower(880000);
            centralizedInverter.setMaxACOutputCurrent(1512);
            centralizedInverter.setRatedGridVoltage(342);
            centralizedInverter.setMaxEfficiency(98.7);
            this.getSession().save(centralizedInverter);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
        } finally {
            return result;
        }
    }

    public List<CentralizedInverter> queryComponent() {
        try {
            //System.out.println("HHhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
            return this.getSession().createQuery("from CentralizedInverter").list();
        } catch (Exception e) {
            //System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
            return null;
        }
    }
}

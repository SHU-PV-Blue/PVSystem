package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Dell on 2017/4/5.
 */
// 在@Table注释的name属性中添加对应数据库中表的名称// 直流配电柜
public class DCBox implements Serializable{
    private int id;
    private String companyName;
    private String model;
    private int numOfAccessDCChannels;
    private int limitOfInputDCPower;
    private int limitOfIOTotalCurrent;
    private int limitOfATOCV;  // AOCV(Access Open Circuit Voltage, 接入开路电压)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getNumOfAccessDCChannels() {
        return numOfAccessDCChannels;
    }

    public void setNumOfAccessDCChannels(int numOfAccessDCChannels) {
        this.numOfAccessDCChannels = numOfAccessDCChannels;
    }

    public int getLimitOfInputDCPower() {
        return limitOfInputDCPower;
    }

    public void setLimitOfInputDCPower(int limitOfInputDCPower) {
        this.limitOfInputDCPower = limitOfInputDCPower;
    }

    public int getLimitOfIOTotalCurrent() {
        return limitOfIOTotalCurrent;
    }

    public void setLimitOfIOTotalCurrent(int limitOfIOTotalCurrent) {
        this.limitOfIOTotalCurrent = limitOfIOTotalCurrent;
    }

    public int getLimitOfATOCV() {
        return limitOfATOCV;
    }

    public void setLimitOfATOCV(int limitOfATOCV) {
        this.limitOfATOCV = limitOfATOCV;
    }
}

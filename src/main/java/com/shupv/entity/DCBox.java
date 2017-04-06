package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Dell on 2017/4/5.
 */
@Entity
// 在@Table注释的name属性中添加对应数据库中表的名称
@Table
// 直流配电柜
public class DCBox {
    private int id;
    private String companyName;
    private String model;
    private int numOfAccessDCChannels;
    private int limitOfInputDCPower;
    private int limitOfIOTotalCurrent;
    private int limitOfATOCV;  // AOCV(Access Open Circuit Voltage, 接入开路电压)

    @Id
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

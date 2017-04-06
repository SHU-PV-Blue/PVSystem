package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Dell on 2017/4/4.
 */
@Entity
// 在@Table注释的name属性中添加对应数据库中表的名称
@Table
// 直流汇流箱
public class DCBus {
    private int id;
    private String manufacturersName;
    private String model;
    private int numOfInputs;
    private int inputCurrentLimit;
    private boolean haveDCCB;  // DCCB(DC Circuit Breaker, 直流断路器)
    private boolean haveLPM;  // LPM(Lightning Protection Monitoring, 防雷失效监控)
    private boolean haveMonitoringUnit;
    private boolean haveAuxiliaryPower;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getManufacturersName() {
        return manufacturersName;
    }

    public void setManufacturersName(String manufacturersName) {
        this.manufacturersName = manufacturersName;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getNumOfInputs() {
        return numOfInputs;
    }

    public void setNumOfInputs(int numOfInputs) {
        this.numOfInputs = numOfInputs;
    }

    public int getInputCurrentLimit() {
        return inputCurrentLimit;
    }

    public void setInputCurrentLimit(int inputCurrentLimit) {
        this.inputCurrentLimit = inputCurrentLimit;
    }

    public boolean isHaveDCCB() {
        return haveDCCB;
    }

    public void setHaveDCCB(boolean haveDCCB) {
        this.haveDCCB = haveDCCB;
    }

    public boolean isHaveLPM() {
        return haveLPM;
    }

    public void setHaveLPM(boolean haveLPM) {
        this.haveLPM = haveLPM;
    }

    public boolean isHaveMonitoringUnit() {
        return haveMonitoringUnit;
    }

    public void setHaveMonitoringUnit(boolean haveMonitoringUnit) {
        this.haveMonitoringUnit = haveMonitoringUnit;
    }

    public boolean isHaveAuxiliaryPower() {
        return haveAuxiliaryPower;
    }

    public void setHaveAuxiliaryPower(boolean haveAuxiliaryPower) {
        this.haveAuxiliaryPower = haveAuxiliaryPower;
    }
}

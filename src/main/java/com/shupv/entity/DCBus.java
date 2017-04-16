package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/4.
 */


// 直流汇流箱
@Entity
public class DCBus implements Serializable {
    private int id;
    private String manufacturersName;//厂家
    private String model;//型号
    private int numOfInputs;//输入路数
    private int inputCurrentLimit;//输入电流上限
    private boolean haveDCCB;  // DCCB(DC Circuit Breaker, 直流断路器)
    private boolean haveLPM;  // LPM(Lightning Protection Monitoring, 防雷失效监控)
    private boolean haveMonitoringUnit;//MonitoringUnit 监控单元
    private boolean haveAuxiliaryPower;//AuxiliaryPower 辅助电源
    private Set<CentralizedTransform> centralizedTransformSet
            = new HashSet<CentralizedTransform>();

    @OneToMany(mappedBy = "dcBus",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<CentralizedTransform> getCentralizedTransformSet() {
        return centralizedTransformSet;
    }

    public void setCentralizedTransformSet(Set<CentralizedTransform> centralizedTransformSet) {
        this.centralizedTransformSet = centralizedTransformSet;
    }

    @Id
    @Column(name = "dcbus_id")
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

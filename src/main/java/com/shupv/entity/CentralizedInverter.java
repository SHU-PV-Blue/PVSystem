package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/4.
 */
// 集中式逆变器
@Entity
public class CentralizedInverter implements Serializable{
    private int id;
    private String manufacturersName;//厂家
    private String model;//型号
    private int maxDCInputPower;//最大直流输入功率
    private int maxInputVoltage;//启动电压
    private int startVoltage;//最大效率
    private int mppLVL;  // LVL(Lower Voltage Limit, 电压下限)
    private int mppVL;  // VL(Voltage Limit, 电压上限)
    private int maxDCInputCurrent; //最大直流输入电流
    private int ratedACOutputPower;//额定交流输出功率
    private int maxOutputPower;//最大输出功率
    private int maxACOutputCurrent;//最大交流输出电流
    private int ratedGridVoltage;//最大交流输出电流
    private double maxEfficiency;//最大效率
    private Set<CentralizedTransform> centralizedTransformSet
            = new HashSet<CentralizedTransform>();

    @Id
    @Column(name = "centralized_inverter_id")
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

    @OneToMany(mappedBy = "centralizedInverter",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<CentralizedTransform> getCentralizedTransformSet() {
        return centralizedTransformSet;
    }

    public void setCentralizedTransformSet(Set<CentralizedTransform> centralizedTransformSet) {
        this.centralizedTransformSet = centralizedTransformSet;
    }

    public int getMaxDCInputPower() {
        return maxDCInputPower;
    }

    public void setMaxDCInputPower(int maxDCInputPower) {
        this.maxDCInputPower = maxDCInputPower;
    }

    public int getMaxInputVoltage() {
        return maxInputVoltage;
    }

    public void setMaxInputVoltage(int maxInputVoltage) {
        this.maxInputVoltage = maxInputVoltage;
    }

    public int getStartVoltage() {
        return startVoltage;
    }

    public void setStartVoltage(int startVoltage) {
        this.startVoltage = startVoltage;
    }

    public int getMppLVL() {
        return mppLVL;
    }

    public void setMppLVL(int mppLVL) {
        this.mppLVL = mppLVL;
    }

    public int getMppVL() {
        return mppVL;
    }

    public void setMppVL(int mppVL) {
        this.mppVL = mppVL;
    }

    public int getMaxDCInputCurrent() {
        return maxDCInputCurrent;
    }

    public void setMaxDCInputCurrent(int maxDCInputCurrent) {
        this.maxDCInputCurrent = maxDCInputCurrent;
    }

    public int getRatedACOutputPower() {
        return ratedACOutputPower;
    }

    public void setRatedACOutputPower(int ratedACOutputPower) {
        this.ratedACOutputPower = ratedACOutputPower;
    }

    public int getMaxOutputPower() {
        return maxOutputPower;
    }

    public void setMaxOutputPower(int maxOutputPower) {
        this.maxOutputPower = maxOutputPower;
    }

    public int getMaxACOutputCurrent() {
        return maxACOutputCurrent;
    }

    public void setMaxACOutputCurrent(int maxACOutputCurrent) {
        this.maxACOutputCurrent = maxACOutputCurrent;
    }

    public int getRatedGridVoltage() {
        return ratedGridVoltage;
    }

    public void setRatedGridVoltage(int ratedGridVoltage) {
        this.ratedGridVoltage = ratedGridVoltage;
    }

    public double getMaxEfficiency() {
        return maxEfficiency;
    }

    public void setMaxEfficiency(double maxEfficiency) {
        this.maxEfficiency = maxEfficiency;
    }
}

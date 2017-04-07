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
// 集中式逆变器
public class CentralizedInverter {
    private int id;
    private String manufacturersName;
    private String model;
    private int maxDCInputPower;
    private int maxInputVoltage;
    private int startVoltage;
    private int mppLVL;  // LVL(Lower Voltage Limit, 电压下限)
    private int mppVL;  // VL(Voltage Limit, 电压上限)
    private int maxDCInputCurrent;
    private int ratedACOutputPower;
    private int maxOutputPower;
    private int maxACOutputCurrent;
    private int ratedGridVoltage;
    private double maxEfficiency;

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

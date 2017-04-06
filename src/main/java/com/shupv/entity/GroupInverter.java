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
// 组串式逆变器
public class GroupInverter {
    private int id;
    private String manufacturersName;
    private String model;
    private int maxInputPower;
    private int maxInputVoltage;
    private int ratedInputVoltage;
    private int mppLVL;  // LVL(Lower Voltage Limit, 电压下限)
    private int mppVL;  // VL(Voltage Limit, 电压上限)
    private int numOfMPPT;
    private double maxInputCurrent;
    private double maxAllowedInputCurrent;
    private int ratedOutputPower;
    private int maxOutputPower;
    private double maxOutputCurrent;
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

    public int getMaxInputPower() {
        return maxInputPower;
    }

    public void setMaxInputPower(int maxInputPower) {
        this.maxInputPower = maxInputPower;
    }

    public int getMaxInputVoltage() {
        return maxInputVoltage;
    }

    public void setMaxInputVoltage(int maxInputVoltage) {
        this.maxInputVoltage = maxInputVoltage;
    }

    public int getRatedInputVoltage() {
        return ratedInputVoltage;
    }

    public void setRatedInputVoltage(int ratedInputVoltage) {
        this.ratedInputVoltage = ratedInputVoltage;
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

    public int getNumOfMPPT() {
        return numOfMPPT;
    }

    public void setNumOfMPPT(int numOfMPPT) {
        this.numOfMPPT = numOfMPPT;
    }

    public double getMaxInputCurrent() {
        return maxInputCurrent;
    }

    public void setMaxInputCurrent(double maxInputCurrent) {
        this.maxInputCurrent = maxInputCurrent;
    }

    public double getMaxAllowedInputCurrent() {
        return maxAllowedInputCurrent;
    }

    public void setMaxAllowedInputCurrent(double maxAllowedInputCurrent) {
        this.maxAllowedInputCurrent = maxAllowedInputCurrent;
    }

    public int getRatedOutputPower() {
        return ratedOutputPower;
    }

    public void setRatedOutputPower(int ratedOutputPower) {
        this.ratedOutputPower = ratedOutputPower;
    }

    public int getMaxOutputPower() {
        return maxOutputPower;
    }

    public void setMaxOutputPower(int maxOutputPower) {
        this.maxOutputPower = maxOutputPower;
    }

    public double getMaxOutputCurrent() {
        return maxOutputCurrent;
    }

    public void setMaxOutputCurrent(double maxOutputCurrent) {
        this.maxOutputCurrent = maxOutputCurrent;
    }

    public double getMaxEfficiency() {
        return maxEfficiency;
    }

    public void setMaxEfficiency(double maxEfficiency) {
        this.maxEfficiency = maxEfficiency;
    }
}

package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/5.
 */

// 组串式逆变器
@Entity
public class GroupInverter implements Serializable {
    private int id;
    private String manufacturersName;//厂家
    private String model;//型号
    private int maxInputPower;//最大输入功率
    private int maxInputVoltage;//最大输入电压
    private int ratedInputVoltage;//额定输入电压
    private int mppLVL;  // LVL(Lower Voltage Limit, 电压下限)
    private int mppVL;  // VL(Voltage Limit, 电压上限)
    private int numOfMPPT;//MPPT数量
    private double maxInputCurrent;//最大输入电流
    private double maxAllowedInputCurrent;//输入端子最大允许电流
    private int ratedOutputPower;//额定输出功率
    private int maxOutputPower;//最大输出功率
    private double maxOutputCurrent;//最大输出电流
    private double maxEfficiency;//最大效率
    private Set<GroupTransformer> groupTransformerSet
            = new HashSet<GroupTransformer>();

    @OneToMany(mappedBy = "groupInverter",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<GroupTransformer> getGroupTransformerSet() {
        return groupTransformerSet;
    }

    public void setGroupTransformerSet(Set<GroupTransformer> groupTransformerSet) {
        this.groupTransformerSet = groupTransformerSet;
    }

    @Id
    @Column(name = "group_inverter_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
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

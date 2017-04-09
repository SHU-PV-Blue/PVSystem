package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class StepUpTransformer {
    private int id;
    private String deviceName;//产品名
    private int size;//类型
    private String modelNumber;//分类
    private double ratedCapacity;//额定容量
    private double loadLoss;//负载损耗（W）
    private double noloadElectricity;//空载电流（%）
    private double shortCircuitImpedance;//短路阻抗（%）
    private double ratedVoltage;//额定电压（V）
    private String highPressureBranchRange;//高压分接范围,这是一个范围
    private int linkedGroupId;//联结组标号
    private double noloadLoss;//空载损耗（W）
    public StepUpTransformer(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getModelNumber() {
        return modelNumber;
    }

    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    public double getRatedCapacity() {
        return ratedCapacity;
    }

    public void setRatedCapacity(double ratedCapacity) {
        this.ratedCapacity = ratedCapacity;
    }

    public double getLoadLoss() {
        return loadLoss;
    }

    public void setLoadLoss(double loadLoss) {
        this.loadLoss = loadLoss;
    }

    public double getNoloadElectricity() {
        return noloadElectricity;
    }

    public void setNoloadElectricity(double noloadElectricity) {
        this.noloadElectricity = noloadElectricity;
    }

    public double getShortCircuitImpedance() {
        return shortCircuitImpedance;
    }

    public void setShortCircuitImpedance(double shortCircuitImpedance) {
        this.shortCircuitImpedance = shortCircuitImpedance;
    }

    public double getRatedVoltage() {
        return ratedVoltage;
    }

    public void setRatedVoltage(double ratedVoltage) {
        this.ratedVoltage = ratedVoltage;
    }

    public String getHighPressureBranchRange() {
        return highPressureBranchRange;
    }

    public void setHighPressureBranchRange(String highPressureBranchRange) {
        this.highPressureBranchRange = highPressureBranchRange;
    }

    public int getLinkedGroupId() {
        return linkedGroupId;
    }

    public void setLinkedGroupId(int linkedGroupId) {
        this.linkedGroupId = linkedGroupId;
    }

    public double getNoloadLoss() {
        return noloadLoss;
    }

    public void setNoloadLoss(double noloadLoss) {
        this.noloadLoss = noloadLoss;
    }
}

package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class SwitchCabinet {
    private int id;
    private String brand;//品牌
    private String modelNumber;//型号
    private boolean isHighPressure;//高低压类型
    private double generatrixRatedElectricity;//母线额定电流/A
    private double ratedVoltage;//额定电压/V
    private double ratedFrequency;//额定频率/Hz
    private int safeguardLevel;//防护等级
    private String use;//用途
    private String structureFrom;//结构形式

    public SwitchCabinet() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModelNumber() {
        return modelNumber;
    }

    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    public boolean isHighPressure() {
        return isHighPressure;
    }

    public void setHighPressure(boolean highPressure) {
        isHighPressure = highPressure;
    }

    public double getGeneratrixRatedElectricity() {
        return generatrixRatedElectricity;
    }

    public void setGeneratrixRatedElectricity(double generatrixRatedElectricity) {
        this.generatrixRatedElectricity = generatrixRatedElectricity;
    }

    public double getRatedVoltage() {
        return ratedVoltage;
    }

    public void setRatedVoltage(double ratedVoltage) {
        this.ratedVoltage = ratedVoltage;
    }

    public double getRatedFrequency() {
        return ratedFrequency;
    }

    public void setRatedFrequency(double ratedFrequency) {
        this.ratedFrequency = ratedFrequency;
    }

    public int getSafeguardLevel() {
        return safeguardLevel;
    }

    public void setSafeguardLevel(int safeguardLevel) {
        this.safeguardLevel = safeguardLevel;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public String getStructureFrom() {
        return structureFrom;
    }

    public void setStructureFrom(String structureFrom) {
        this.structureFrom = structureFrom;
    }
}

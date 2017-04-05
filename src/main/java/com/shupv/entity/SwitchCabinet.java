package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class SwitchCabinet {
    private int switchCabinetId;
    private String brand;
    private String modelNumber;
    private boolean isHighPressure;
    private double generatrixRatedElectricity;
    private double ratedVoltage;
    private double ratedFrequency;
    private int safeguardLevel;
    private String use;
    private String structureFrom;

    public SwitchCabinet(){}

    public int getSwitchCabinetId() {
        return switchCabinetId;
    }

    public void setSwitchCabinetId(int switchCabinetId) {
        this.switchCabinetId = switchCabinetId;
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

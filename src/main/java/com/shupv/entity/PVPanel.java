package com.shupv.entity;

/**
 * Created by cc on 17-4-4.
 */
public class PVPanel {
    private int PVPId;
    private String company;
    private String form;//类型
    private String series;//系列
    private double peakPower;
    private double openCircuitVoltage;
    private double maxPowerVoltage;
    private double maxPowerCurrentl;
    private double shortCircuitCurrent;
    private double TCsopenCircuitVoltage;//开路电压温度系数(有TC前缀)
    private double TCmaxPower;
    private double TCshortCircuitCurrent;
    private double length;
    private double width;
    private double weight;
    private double upperOperatingTemperature;
    private double lowerOperatingTemperature;
}

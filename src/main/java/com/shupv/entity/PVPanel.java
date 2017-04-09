package com.shupv.entity;

/**
 * Created by cc on 17-4-4.
 */
public class PVPanel {
    private int PVPId;//光伏电板设备编号
    private String company;//公司名
    private String form;//类型
    private String series;//系列
    private double peakPower;//峰值功率
    private double transferPower;//转换功率
    private double openCircuitVoltage;//开路电压
    private double maxPowerVoltage;//最大功率电压
    private double maxPowerCurrentl;//最大功率电流
    private double shortCircuitCurrent;//短路电流
    private double TCsopenCircuitVoltage;//开路电压温度系数(有TC前缀)
    private double TCmaxPower;//最大功率温度系数
    private double TCshortCircuitCurrent;//短路电流温度系数
    private double length;//长度
    private double width;//宽度
    private double weight;//重量
    private double upperOperatingTemperature;//工作温度上限
    private double lowerOperatingTemperature;//工作温度下限
}

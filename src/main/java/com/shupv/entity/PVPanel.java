package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by cc on 17-4-4.
 */
@Entity
public class PVPanel implements Serializable {
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
    private Set<Project> projects = new HashSet<Project>();

    @OneToMany(mappedBy = "pvPanel",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getPVPId() {
        return PVPId;
    }

    public void setPVPId(int PVPId) {
        this.PVPId = PVPId;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public double getPeakPower() {
        return peakPower;
    }

    public void setPeakPower(double peakPower) {
        this.peakPower = peakPower;
    }

    public double getTransferPower() {
        return transferPower;
    }

    public void setTransferPower(double transferPower) {
        this.transferPower = transferPower;
    }

    public double getOpenCircuitVoltage() {
        return openCircuitVoltage;
    }

    public void setOpenCircuitVoltage(double openCircuitVoltage) {
        this.openCircuitVoltage = openCircuitVoltage;
    }

    public double getMaxPowerVoltage() {
        return maxPowerVoltage;
    }

    public void setMaxPowerVoltage(double maxPowerVoltage) {
        this.maxPowerVoltage = maxPowerVoltage;
    }

    public double getMaxPowerCurrentl() {
        return maxPowerCurrentl;
    }

    public void setMaxPowerCurrentl(double maxPowerCurrentl) {
        this.maxPowerCurrentl = maxPowerCurrentl;
    }

    public double getShortCircuitCurrent() {
        return shortCircuitCurrent;
    }

    public void setShortCircuitCurrent(double shortCircuitCurrent) {
        this.shortCircuitCurrent = shortCircuitCurrent;
    }

    public double getTCsopenCircuitVoltage() {
        return TCsopenCircuitVoltage;
    }

    public void setTCsopenCircuitVoltage(double TCsopenCircuitVoltage) {
        this.TCsopenCircuitVoltage = TCsopenCircuitVoltage;
    }

    public double getTCmaxPower() {
        return TCmaxPower;
    }

    public void setTCmaxPower(double TCmaxPower) {
        this.TCmaxPower = TCmaxPower;
    }

    public double getTCshortCircuitCurrent() {
        return TCshortCircuitCurrent;
    }

    public void setTCshortCircuitCurrent(double TCshortCircuitCurrent) {
        this.TCshortCircuitCurrent = TCshortCircuitCurrent;
    }

    public double getLength() {
        return length;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getUpperOperatingTemperature() {
        return upperOperatingTemperature;
    }

    public void setUpperOperatingTemperature(double upperOperatingTemperature) {
        this.upperOperatingTemperature = upperOperatingTemperature;
    }

    public double getLowerOperatingTemperature() {
        return lowerOperatingTemperature;
    }

    public void setLowerOperatingTemperature(double lowerOperatingTemperature) {
        this.lowerOperatingTemperature = lowerOperatingTemperature;
    }
}

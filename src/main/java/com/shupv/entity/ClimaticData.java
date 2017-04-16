package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by cc on 17-4-4.
 */
@Entity
public class ClimaticData implements Serializable{
    private int climaticId;//编号
    private int month;//月份
    private double irradiance;//辐照度
    private double temperature;//温度
    private double humidity;//湿度
    private double windSpeed;//风速
    private double longitude;//经度
    private double latitude;//纬度
    private Set<Project> projects = new HashSet<Project>();

    @OneToMany(mappedBy = "climaticData",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    @Id
    public int getClimaticId() {
        return climaticId;
    }

    public void setClimaticId(int climaticId) {
        this.climaticId = climaticId;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public double getIrradiance() {
        return irradiance;
    }

    public void setIrradiance(double irradiance) {
        this.irradiance = irradiance;
    }

    public double getTemperature() {
        return temperature;
    }

    public void setTemperature(double temperature) {
        this.temperature = temperature;
    }

    public double getHumidity() {
        return humidity;
    }

    public void setHumidity(double humidity) {
        this.humidity = humidity;
    }

    public double getWindSpeed() {
        return windSpeed;
    }

    public void setWindSpeed(double windSpeed) {
        this.windSpeed = windSpeed;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }
}

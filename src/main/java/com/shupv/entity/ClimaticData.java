package com.shupv.entity;

import javax.persistence.Entity;
import java.io.Serializable;

/**
 * Created by cc on 17-4-4.
 */

public class ClimaticData implements Serializable{
    private int climaticId;//编号
    private int month;//月份
    private double irradiance;//辐照度
    private double temperature;//温度
    private double humidity;//湿度
    private double windSpeed;//风速
    private double longitude;//经度
    private double latitude;//纬度


}

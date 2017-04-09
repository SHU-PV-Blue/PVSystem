package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
//高压侧设备
public class HighPressureDevice {
    private int id;
    private int deviceSize;//设备类型
    private int subHighPressure;//子类的设备编号
    public HighPressureDevice(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDeviceSize() {
        return deviceSize;
    }

    public void setDeviceSize(int deviceSize) {
        this.deviceSize = deviceSize;
    }

    public int getSubHighPressure() {
        return subHighPressure;
    }

    public void setSubHighPressure(int subHighPressure) {
        this.subHighPressure = subHighPressure;
    }
}

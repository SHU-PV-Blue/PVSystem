package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class HighPressureDevice {
    private int highPressureId;
    private int deviceSize;
    private int subHighPressureId;
    public HighPressureDevice(){}

    public int getHighPressureId() {
        return highPressureId;
    }

    public void setHighPressureId(int highPressureId) {
        this.highPressureId = highPressureId;
    }

    public int getDeviceSize() {
        return deviceSize;
    }

    public void setDeviceSize(int deviceSize) {
        this.deviceSize = deviceSize;
    }

    public int getSubHighPressureId() {
        return subHighPressureId;
    }

    public void setSubHighPressureId(int subHighPressureId) {
        this.subHighPressureId = subHighPressureId;
    }
}

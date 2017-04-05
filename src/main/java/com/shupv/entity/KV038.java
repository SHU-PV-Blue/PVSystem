package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class KV038 implements HighPressure {
    private int subHighPressureId;
    private int switchCabinetId;
    public KV038(){}

    public int getSwitchCabinetId() {
        return switchCabinetId;
    }

    public void setSwitchCabinetId(int switchCabinetId) {
        this.switchCabinetId = switchCabinetId;
    }

    public int getSubHighPressureId() {

        return subHighPressureId;
    }

    public void setSubHighPressureId(int subHighPressureId) {
        this.subHighPressureId = subHighPressureId;
    }
}

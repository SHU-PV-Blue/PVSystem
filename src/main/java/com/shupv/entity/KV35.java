package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class KV35 implements HighPressure {
    private int subHighPressureId;
    private int lowSwitchCabinetId;
    private int highSwitchCabinetId;
    private int StepUpTransformerId;
    public KV35(){}

    public int getSubHighPressureId() {
        return subHighPressureId;
    }

    public void setSubHighPressureId(int subHighPressureId) {
        this.subHighPressureId = subHighPressureId;
    }

    public int getLowSwitchCabinetId() {
        return lowSwitchCabinetId;
    }

    public void setLowSwitchCabinetId(int lowSwitchCabinetId) {
        this.lowSwitchCabinetId = lowSwitchCabinetId;
    }

    public int getHighSwitchCabinetId() {
        return highSwitchCabinetId;
    }

    public void setHighSwitchCabinetId(int highSwitchCabinetId) {
        this.highSwitchCabinetId = highSwitchCabinetId;
    }

    public int getStepUpTransformerId() {
        return StepUpTransformerId;
    }

    public void setStepUpTransformerId(int stepUpTransformerId) {
        StepUpTransformerId = stepUpTransformerId;
    }
}

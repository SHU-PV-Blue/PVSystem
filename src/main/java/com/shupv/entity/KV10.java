package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class KV10 implements HighPressure {
    private int id;
    private int lowSwitchCabinet;//低压开关柜编号
    private int highSwitchCabinet;//高压开关柜编号
    private int StepUpTransformer;//升压变压器编号
    public KV10(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLowSwitchCabinet() {
        return lowSwitchCabinet;
    }

    public void setLowSwitchCabinet(int lowSwitchCabinet) {
        this.lowSwitchCabinet = lowSwitchCabinet;
    }

    public int getHighSwitchCabinet() {
        return highSwitchCabinet;
    }

    public void setHighSwitchCabinet(int highSwitchCabinet) {
        this.highSwitchCabinet = highSwitchCabinet;
    }

    public int getStepUpTransformer() {
        return StepUpTransformer;
    }

    public void setStepUpTransformer(int stepUpTransformer) {
        StepUpTransformer = stepUpTransformer;
    }
}

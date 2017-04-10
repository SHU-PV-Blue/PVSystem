package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class KV10 implements HighPressure {
    private int id;
    private SwitchCabinet lowSwitchCabinet;//低压开关柜编号
    private SwitchCabinet highSwitchCabinet;//高压开关柜编号
    private StepUpTransformer stepUpTransformer;//升压变压器编号
    public KV10(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public SwitchCabinet getLowSwitchCabinet() {
        return lowSwitchCabinet;
    }

    public void setLowSwitchCabinet(SwitchCabinet lowSwitchCabinet) {
        this.lowSwitchCabinet = lowSwitchCabinet;
    }

    public SwitchCabinet getHighSwitchCabinet() {
        return highSwitchCabinet;
    }

    public void setHighSwitchCabinet(SwitchCabinet highSwitchCabinet) {
        this.highSwitchCabinet = highSwitchCabinet;
    }

    public StepUpTransformer getStepUpTransformer() {
        return stepUpTransformer;
    }

    public void setStepUpTransformer(StepUpTransformer stepUpTransformer) {
        this.stepUpTransformer = stepUpTransformer;
    }
}

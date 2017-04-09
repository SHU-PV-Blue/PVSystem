package com.shupv.entity;

/**
 * Created by chengs on 17-4-5.
 */
public class KV038 implements HighPressure {
    private int id;
    private int switchCabinet;//开关柜编号
    public KV038(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSwitchCabinet() {
        return switchCabinet;
    }

    public void setSwitchCabinet(int switchCabinet) {
        this.switchCabinet = switchCabinet;
    }
}

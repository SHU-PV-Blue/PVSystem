package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

 // 在@Table注释的name属性中添加对应数据库中表的名称// 集中式变压器
public class CentralizedTransform implements Transformer,Serializable{
    private int id;
    private CentralizedInverter centralizedInverter;
    private DCBus dcBus;
    private Cable cable;
    private DCBox dcBox;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CentralizedInverter getCentralizedInverter() {
        return centralizedInverter;
    }

    public void setCentralizedInverter(CentralizedInverter centralizedInverter) {
        this.centralizedInverter = centralizedInverter;
    }

    public DCBus getDcBus() {
        return dcBus;
    }

    public void setDcBus(DCBus dcBus) {
        this.dcBus = dcBus;
    }

    public Cable getCable() {
        return cable;
    }

    public void setCable(Cable cable) {
        this.cable = cable;
    }

    public DCBox getDcBox() {
        return dcBox;
    }

    public void setDcBox(DCBox dcBox) {
        this.dcBox = dcBox;
    }
}

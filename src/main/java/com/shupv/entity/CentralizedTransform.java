package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

// 集中式变压器
@Entity
public class CentralizedTransform implements Transformer, Serializable {
    private int id;
    private CentralizedInverter centralizedInverter;//集中式逆变器
    private DCBus dcBus;//直流汇流箱
    private Cable cable;//电缆
    private DCBox dcBox;//直流配电柜
    private Set<LowPressureDevice> lowPressureDeviceSet
            = new HashSet<LowPressureDevice>();

    @Id
    @Column(name = "centralized_transform_id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "centralized_inverter_id")
    public CentralizedInverter getCentralizedInverter() {
        return centralizedInverter;
    }

    public void setCentralizedInverter(CentralizedInverter centralizedInverter) {
        this.centralizedInverter = centralizedInverter;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "dcbus_id")
    public DCBus getDcBus() {
        return dcBus;
    }

    public void setDcBus(DCBus dcBus) {
        this.dcBus = dcBus;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "cable_id")
    public Cable getCable() {
        return cable;
    }

    public void setCable(Cable cable) {
        this.cable = cable;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "dcbox_id")
    public DCBox getDcBox() {
        return dcBox;
    }

    public void setDcBox(DCBox dcBox) {
        this.dcBox = dcBox;
    }

    @OneToMany(mappedBy = "centralizedTransform",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<LowPressureDevice> getLowPressureDeviceSet() {
        return lowPressureDeviceSet;
    }

    public void setLowPressureDeviceSet(Set<LowPressureDevice> lowPressureDeviceSet) {
        this.lowPressureDeviceSet = lowPressureDeviceSet;
    }
}

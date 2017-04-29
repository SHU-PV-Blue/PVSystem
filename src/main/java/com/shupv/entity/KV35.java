package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by chengs on 17-4-5.
 */
@Entity
public class KV35 implements Serializable {
    private int id;
    private LowSwitchCabinet lowSwitchCabinet;//低压开关柜编号
    private HighSwitchCabinet highSwitchCabinet;//高压开关柜编号
    private StepUpTransformer stepUpTransformer;//升压变压器编号
    private Set<HighPressureDevice> highPressureDevices
            = new HashSet<HighPressureDevice>();

    @OneToMany(mappedBy = "kv35",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<HighPressureDevice> getHighPressureDevices() {
        return highPressureDevices;
    }

    public void setHighPressureDevices(Set<HighPressureDevice> highPressureDevices) {
        this.highPressureDevices = highPressureDevices;
    }

    @Id
    @Column(name = "kv35_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "low_switch_cabinet_id")
    public LowSwitchCabinet getLowSwitchCabinet() {
        return lowSwitchCabinet;
    }

    public void setLowSwitchCabinet(LowSwitchCabinet lowSwitchCabinet) {
        this.lowSwitchCabinet = lowSwitchCabinet;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "highSwitchCabinetId")
    public HighSwitchCabinet getHighSwitchCabinet() {
        return highSwitchCabinet;
    }

    public void setHighSwitchCabinet(HighSwitchCabinet highSwitchCabinet) {
        this.highSwitchCabinet = highSwitchCabinet;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "step_up_transformer_id")
    public StepUpTransformer getStepUpTransformer() {
        return stepUpTransformer;
    }

    public void setStepUpTransformer(StepUpTransformer stepUpTransformer) {
        this.stepUpTransformer = stepUpTransformer;
    }
}

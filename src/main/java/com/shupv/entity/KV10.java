package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by chengs on 17-4-5.
 */
@Entity
public class KV10 implements HighPressure,Serializable {
    private int id;
    private LowSwitchCabinet lowSwitchCabinet;//低压开关柜编号
    private StepUpTransformer stepUpTransformer;//升压变压器编号
    private Set<HighPressureDevice> highPressureDevices
            = new HashSet<HighPressureDevice>();

    @OneToMany(mappedBy = "kv10",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<HighPressureDevice> getHighPressureDevices() {
        return highPressureDevices;
    }

    public void setHighPressureDevices(Set<HighPressureDevice> highPressureDevices) {
        this.highPressureDevices = highPressureDevices;
    }

    @Id
    @Column(name = "kv10_id")
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
    @JoinColumn(name = "step_up_transformer_id")
    public StepUpTransformer getStepUpTransformer() {
        return stepUpTransformer;
    }

    public void setStepUpTransformer(StepUpTransformer stepUpTransformer) {
        this.stepUpTransformer = stepUpTransformer;
    }
}

package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/4.
 */

// 组串式变压器
@Entity
public class GroupTransformer implements Transformer,Serializable {
    private int id;
    private GroupInverter groupInverter;//组串式逆变器
    private Cable cable;//电缆
    private Set<LowPressureDevice>lowPressureDeviceSet
            = new HashSet<LowPressureDevice>();

    @Id
    @Column(name = "group_transformer_id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "group_inverter_id")
    public GroupInverter getGroupInverter() {
        return groupInverter;
    }

    public void setGroupInverter(GroupInverter groupInverter) {
        this.groupInverter = groupInverter;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "cable_id")
    public Cable getCable() {
        return cable;
    }

    public void setCable(Cable cable) {
        this.cable = cable;
    }

    @OneToMany(mappedBy = "groupTransformer",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<LowPressureDevice> getLowPressureDeviceSet() {
        return lowPressureDeviceSet;
    }

    public void setLowPressureDeviceSet(Set<LowPressureDevice> lowPressureDeviceSet) {
        this.lowPressureDeviceSet = lowPressureDeviceSet;
    }
}

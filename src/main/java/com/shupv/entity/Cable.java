package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/5.
 */
// 电缆
@Entity
public class Cable implements Serializable{
    private int id;
    private String name;
    private String model;//型号
    private int allowableCarryingCapacity;//允许载流量
    private int capacity;//容量
    private Set<CentralizedTransform> centralizedTransformSet
            = new HashSet<CentralizedTransform>();
    private Set<GroupTransformer> groupTransformerSet
            = new HashSet<GroupTransformer>();

    @OneToMany(mappedBy = "cable",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<GroupTransformer> getGroupTransformerSet() {
        return groupTransformerSet;
    }

    public void setGroupTransformerSet(Set<GroupTransformer> groupTransformerSet) {
        this.groupTransformerSet = groupTransformerSet;
    }

    @Id
    @Column(name = "cable_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getAllowableCarryingCapacity() {
        return allowableCarryingCapacity;
    }

    public void setAllowableCarryingCapacity(int allowableCarryingCapacity) {
        this.allowableCarryingCapacity = allowableCarryingCapacity;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    @OneToMany(mappedBy = "cable",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<CentralizedTransform> getCentralizedTransformSet() {
        return centralizedTransformSet;
    }

    public void setCentralizedTransformSet(Set<CentralizedTransform> centralizedTransformSet) {
        this.centralizedTransformSet = centralizedTransformSet;
    }
}

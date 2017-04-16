package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by cc on 17-4-4.
 */
@Entity
public class LowPressureDevice implements Serializable {
    private int lowPressureDeviceId;//编号
    private int series;//系列
    private CentralizedTransform centralizedTransform;//集中式变压器
    private GroupTransformer groupTransformer;//组串式变压器
    private Set<Project> projects = new HashSet<Project>();

    public int getSeries() {
        return series;
    }

    public void setSeries(int series) {
        this.series = series;
    }

    @OneToMany(mappedBy = "lowPressureDevice",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    @Id
    public int getLowPressureDeviceId() {
        return lowPressureDeviceId;
    }

    public void setLowPressureDeviceId(int lowPressureDeviceId) {
        this.lowPressureDeviceId = lowPressureDeviceId;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "centralized_transform_id")
    public CentralizedTransform getCentralizedTransform() {
        return centralizedTransform;
    }

    public void setCentralizedTransform(CentralizedTransform centralizedTransform) {
        this.centralizedTransform = centralizedTransform;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "group_transformer_id")
    public GroupTransformer getGroupTransformer() {
        return groupTransformer;
    }

    public void setGroupTransformer(GroupTransformer groupTransformer) {
        this.groupTransformer = groupTransformer;
    }
}

package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by chengs on 17-4-5.
 */
//高压侧设备
@Entity
public class HighPressureDevice implements Serializable {
    private int id;
    private int deviceSize;//设备类型
    private KV10 kv10;//10kv高压侧
    private KV35 kv35;//35kv高压侧
    private KV038 kv038;//0.38kv高压侧
    private Set<Project> projects = new HashSet<Project>();
    public HighPressureDevice(){}

    @OneToMany(mappedBy = "highPressureDevice",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    @Id
    @Column(name = "high_pressure_device_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDeviceSize() {
        return deviceSize;
    }

    public void setDeviceSize(int deviceSize) {
        this.deviceSize = deviceSize;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "kv10_id")
    public KV10 getKv10() {
        return kv10;
    }

    public void setKv10(KV10 kv10) {
        this.kv10 = kv10;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "kv35_id")
    public KV35 getKv35() {
        return kv35;
    }

    public void setKv35(KV35 kv35) {
        this.kv35 = kv35;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "kv038_id")
    public KV038 getKv038() {
        return kv038;
    }

    public void setKv038(KV038 kv038) {
        this.kv038 = kv038;
    }
}

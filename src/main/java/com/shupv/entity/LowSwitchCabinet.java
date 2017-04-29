package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by chengs on 17-4-5.
 */
@Entity
public class LowSwitchCabinet implements Serializable {
    private int id;
    private String brand;//品牌
    private String modelNumber;//型号
    private boolean isHighPressure;//高低压类型
    private double generatrixRatedElectricity;//母线额定电流/A
    private double ratedVoltage;//额定电压/V
    private double ratedFrequency;//额定频率/Hz
    private int safeguardLevel;//防护等级
    private String application;//用途
    private String structureFrom;//结构形式
    private Set<KV10> kv10Set = new HashSet<KV10>();
    private Set<KV35> kv35Set = new HashSet<KV35>();
    private Set<KV038> kv038Set = new HashSet<KV038>();

    @Id
    @Column(name = "low_switch_cabinet_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    @OneToMany(mappedBy = "lowSwitchCabinet",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<KV10> getKv10Set() {
        return kv10Set;
    }

    public void setKv10Set(Set<KV10> kv10Set) {
        this.kv10Set = kv10Set;
    }

    @OneToMany(mappedBy = "lowSwitchCabinet",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<KV35> getKv35Set() {
        return kv35Set;
    }

    public void setKv35Set(Set<KV35> kv35Set) {
        this.kv35Set = kv35Set;
    }

    @OneToMany(mappedBy = "lowSwitchCabinet",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<KV038> getKv038Set() {
        return kv038Set;
    }

    public void setKv038Set(Set<KV038> kv038Set) {
        this.kv038Set = kv038Set;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModelNumber() {
        return modelNumber;
    }

    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    public boolean isHighPressure() {
        return isHighPressure;
    }

    public void setHighPressure(boolean highPressure) {
        isHighPressure = highPressure;
    }

    public double getGeneratrixRatedElectricity() {
        return generatrixRatedElectricity;
    }

    public void setGeneratrixRatedElectricity(double generatrixRatedElectricity) {
        this.generatrixRatedElectricity = generatrixRatedElectricity;
    }

    public double getRatedVoltage() {
        return ratedVoltage;
    }

    public void setRatedVoltage(double ratedVoltage) {
        this.ratedVoltage = ratedVoltage;
    }

    public double getRatedFrequency() {
        return ratedFrequency;
    }

    public void setRatedFrequency(double ratedFrequency) {
        this.ratedFrequency = ratedFrequency;
    }

    public int getSafeguardLevel() {
        return safeguardLevel;
    }

    public void setSafeguardLevel(int safeguardLevel) {
        this.safeguardLevel = safeguardLevel;
    }

    public String getApplication() {
        return application;
    }

    public void setApplication(String application) {
        this.application = application;
    }

    public String getStructureFrom() {
        return structureFrom;
    }

    public void setStructureFrom(String structureFrom) {
        this.structureFrom = structureFrom;
    }
}

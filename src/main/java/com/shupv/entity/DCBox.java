package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dell on 2017/4/5.
 */
// 直流配电柜
@Entity
public class DCBox implements Serializable{
    private int id;
    private String companyName;//公司
    private String model;//型号
    private int numOfAccessDCChannels;//接入直流路数
    private int limitOfInputDCPower;//输入直流功率上限
    private int limitOfIOTotalCurrent;//输入输出总电流上限
    private int limitOfATOCV;  // AOCV(Access Open Circuit Voltage, 接入开路电压)
    private Set<CentralizedTransform> centralizedTransformSet
            = new HashSet<CentralizedTransform>();

    @Id
    @Column(name = "dcbox_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getNumOfAccessDCChannels() {
        return numOfAccessDCChannels;
    }

    public void setNumOfAccessDCChannels(int numOfAccessDCChannels) {
        this.numOfAccessDCChannels = numOfAccessDCChannels;
    }

    public int getLimitOfInputDCPower() {
        return limitOfInputDCPower;
    }

    public void setLimitOfInputDCPower(int limitOfInputDCPower) {
        this.limitOfInputDCPower = limitOfInputDCPower;
    }

    public int getLimitOfIOTotalCurrent() {
        return limitOfIOTotalCurrent;
    }

    public void setLimitOfIOTotalCurrent(int limitOfIOTotalCurrent) {
        this.limitOfIOTotalCurrent = limitOfIOTotalCurrent;
    }

    @OneToMany(mappedBy = "dcBox",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<CentralizedTransform> getCentralizedTransformSet() {
        return centralizedTransformSet;
    }

    public void setCentralizedTransformSet(Set<CentralizedTransform> centralizedTransformSet) {
        this.centralizedTransformSet = centralizedTransformSet;
    }

    public int getLimitOfATOCV() {
        return limitOfATOCV;
    }

    public void setLimitOfATOCV(int limitOfATOCV) {
        this.limitOfATOCV = limitOfATOCV;
    }
}

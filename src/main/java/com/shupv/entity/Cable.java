package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Dell on 2017/4/5.
 */
@Entity
// 在@Table注释的name属性中添加对应数据库中表的名称
@Table
// 电缆
public class Cable {
    private int id;
    private String name;
    private String model;
    private int allowableCarryingCapacity;
    private int capacity;

    @Id
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
}

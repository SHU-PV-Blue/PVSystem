package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Dell on 2017/4/5.
 */
 // 在@Table注释的name属性中添加对应数据库中表的名称
public class Cable implements Serializable{
    private int id;
    private String name;
    private String model;
    private int allowableCarryingCapacity;
    private int capacity;

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

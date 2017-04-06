package com.shupv.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Dell on 2017/4/4.
 */
@Entity
// 在@Table注释的name属性中添加对应数据库中表的名称
@Table
// 组串式变压器
public class GroupTransformer implements Transformer {
    private int id;
    private GroupInverter groupInverter;
    private Cable cable;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public GroupInverter getGroupInverter() {
        return groupInverter;
    }

    public void setGroupInverter(GroupInverter groupInverter) {
        this.groupInverter = groupInverter;
    }

    public Cable getCable() {
        return cable;
    }

    public void setCable(Cable cable) {
        this.cable = cable;
    }
}

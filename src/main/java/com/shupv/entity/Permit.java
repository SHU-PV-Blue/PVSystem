package com.shupv.entity;

import java.util.Set;

/**
 * Created by cc on 17-4-4.
 */
public class Permit {
    private int PermitNum; //权限编号
    private String permitName;
    private String url;
    private Set<Role> role;//角色集

    public int getPermitNum() {
        return PermitNum;
    }

    public void setPermitNum(int permitNum) {
        PermitNum = permitNum;
    }

    public String getPermitName() {
        return permitName;
    }

    public void setPermitName(String permitName) {
        this.permitName = permitName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Set<Role> getRole() {
        return role;
    }

    public void setRole(Set<Role> role) {
        this.role = role;
    }
}

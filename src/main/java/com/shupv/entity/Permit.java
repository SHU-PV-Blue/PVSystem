package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by cc on 17-4-4.
 */
@Entity
public class Permit implements Serializable{
    private int permitId; //权限编号
    private String permitName;
    private String url;
    private Set<Role> role = new HashSet<Role>();//角色集

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getPermitId() {
        return permitId;
    }

    public void setPermitId(int permitId) {
        permitId = permitId;
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

    @ManyToMany(mappedBy = "permit",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<Role> getRole() {
        return role;
    }

    public void setRole(Set<Role> role) {
        this.role = role;
    }
}

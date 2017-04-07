package com.shupv.entity;

import java.util.Set;

/**
 * Created by zihua on 17-3-29.
 */
public class Role {
    private String roleName;
    private String roleId; //权限id （编号)
    private Set<Permit> permit;  //角色拥有的权限集

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public Set<Permit> getPermit() {
        return permit;
    }

    public void setPermit(Set<Permit> permit) {
        this.permit = permit;
    }
}

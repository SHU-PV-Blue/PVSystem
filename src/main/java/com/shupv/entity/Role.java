package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by zihua on 17-3-29.
 */
@Entity
public class Role implements Serializable {
    private String roleName;
    private String roleId; //权限id （编号)
    private Set<Permit> permit = new HashSet<Permit>(); //角色拥有的权限集
    private Set<User> users = new HashSet<User>();

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Id
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinTable(
            name = "role_permit",
            joinColumns = @JoinColumn(name = "roleId"),//主控方主键
            inverseJoinColumns = @JoinColumn(name = "permitId")//被控方主键
    )
    public Set<Permit> getPermit() {
        return permit;
    }

    public void setPermit(Set<Permit> permit) {
        this.permit = permit;
    }

    @OneToMany(mappedBy = "role",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}


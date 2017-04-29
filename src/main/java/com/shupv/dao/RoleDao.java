package com.shupv.dao;

import com.shupv.entity.Role;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import static com.shupv.tools.SecurityTools.nullCheck;

/**
 * Created by Dell on 2017/4/22.
 */
@Repository
public class RoleDao extends BaseDao {
    public Role getRoleById(String id){
        Role role = this.getSession().get(Role.class, id);
        return role;
    }
}

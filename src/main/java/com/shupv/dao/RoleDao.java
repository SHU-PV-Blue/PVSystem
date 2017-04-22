package com.shupv.dao;

import com.shupv.entity.Role;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

/**
 * Created by Dell on 2017/4/22.
 */
@Repository
public class RoleDao extends BaseDao {
    public JSONObject getRoleById(String id){
        Role role = this.getSession().get(Role.class, id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("roleId", role.getRoleId());
        jsonObject.put("roleName", role.getRoleName());
        return jsonObject;
    }
}

package com.shupv.dao;

import com.shupv.entity.Project;
import com.shupv.entity.User;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import javax.annotation.Resources;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import static com.shupv.tools.SecurityTools.nullCheck;

/**
 * Created by Dell on 2017/4/22.
 */
@Repository
public class UserDao extends BaseDao {
    public JSONObject getUserByIdAndPwd(String id, String pwd) {
        JSONObject jsonObject = new JSONObject();
        try {
            User user = this.getSession().get(User.class, id);
            if (user.getPassword().equals(pwd)) {
                jsonObject.put("userId", nullCheck(id));
                jsonObject.put("nickname", nullCheck(user.getName()));
                jsonObject.put("userName", nullCheck(user.getUserName()));
                jsonObject.put("mail", nullCheck(user.getMail()));
                jsonObject.put("phoneNum", nullCheck(user.getPhoneNumber()));
                return jsonObject;
            } else {
                return null;
            }
        }catch (Exception e){
            return null;
        }
    }

    public User getUserById(String id) {
        User user = this.getSession().get(User.class, id);
        return user;
    }

    public boolean insert(User user) {
        try {
            this.getSession().save(user);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    public Set<Project> getProjectsById(String userId){
        return this.getUserById(userId).getProjectSet();
    }

}

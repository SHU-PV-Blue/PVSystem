package com.shupv.dao;

import com.shupv.entity.User;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import javax.annotation.Resources;
import java.io.IOException;
import java.util.List;

/**
 * Created by Dell on 2017/4/22.
 */
@Repository
public class UserDao extends BaseDao {
    public JSONObject getUserByIdAndPwd(String id, String pwd) {
        JSONObject jsonObject = new JSONObject();
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
    }

    public User getUserById(String id) {
        User user = this.getSession().get(User.class, id);
        return user;
    }

    public boolean insert(User user) {
        try {
            this.getSession().save(user);
            System.out.print(user.getUserId());
            return true;
        }catch (Exception e){
            return false;
        }
    }

}

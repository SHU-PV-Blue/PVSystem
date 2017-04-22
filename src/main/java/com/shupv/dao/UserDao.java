package com.shupv.dao;

import com.shupv.entity.User;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import javax.annotation.Resources;
import java.util.List;

/**
 * Created by Dell on 2017/4/22.
 */
@Repository
public class UserDao extends BaseDao {
    public JSONObject getUserByIdAndPwd(Integer id, String pwd) {
        JSONObject jsonObject = new JSONObject();
        User user = this.getSession().get(User.class, id);
        if (user.getPassword().equals(pwd)) {
            jsonObject.put("userId", id.toString());
            jsonObject.put("password", pwd);
            jsonObject.put("nickname", user.getName());
            jsonObject.put("userName", user.getUserName());
            jsonObject.put("mail", user.getMail());
            jsonObject.put("phoneNum", user.getPhoneNumber());
            return jsonObject;
        } else {
            return null;
        }
    }
}

package com.shupv.service;

/**
 * Created by zihua on 17-4-16.
 */

import com.shupv.dao.RoleDao;
import com.shupv.dao.UserDao;
import com.shupv.entity.User;
import com.shupv.tools.SecurityTools;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.bind.util.JAXBSource;

@Service
public class SystemService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;

    public boolean checkUserByIdAndPwd(String id, String password) {
        password = SecurityTools.md5(password);
        if (userDao.getUserByIdAndPwd(id, password) == null) {
            return false;
        } else {
            return true;
        }
    }

    public boolean checkUserById(String id) {
        if (userDao.getUserById(id) == null) {
            return false;
        } else {
            return true;
        }
    }

    public boolean register(String id, String password, String nickname) {
        User user = new User();
        user.setUserId(id);
        user.setPassword(SecurityTools.md5(password));
        user.setName(nickname);
        return userDao.insert(user);

    }

}

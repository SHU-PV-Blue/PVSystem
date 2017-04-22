package com.shupv.service;

/**
 * Created by zihua on 17-4-16.
 */

import com.shupv.dao.RoleDao;
import com.shupv.dao.UserDao;
import com.shupv.tools.SecurityTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SystemService {
    @Autowired
    private UserDao userDao;
//    @Autowired
//    private RoleDao roleDao;

    public boolean checkUser(Integer id, String password) {
        password = SecurityTools.md5(password);
        if (userDao.getUserByIdAndPwd(id, password) == null) {
            return false;
        } else {
            return true;
        }
    }
}

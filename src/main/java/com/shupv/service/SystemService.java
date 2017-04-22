package com.shupv.service;

/**
 * Created by zihua on 17-4-16.
 */

import com.shupv.dao.RoleDao;
import com.shupv.dao.UserDao;
import com.shupv.entity.Role;
import com.shupv.entity.User;
import com.shupv.tools.SecurityTools;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.bind.util.JAXBSource;

import static com.shupv.tools.SecurityTools.nullCheck;

@Service
public class SystemService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;

    /** 登录时通过id和password检查用户是否存在
     * @param id
     * @param password
     * @return 返回是否存在该用户
     */
    public boolean checkUserByIdAndPwd(String id, String password) {
        password = SecurityTools.md5(password);
        if (userDao.getUserByIdAndPwd(id, password) == null) {
            return false;
        } else {
            return true;
        }
    }

    /**通过id检查用户是否存在
     * @param id
     * @return 返回是否存在该用户
     */
    public boolean checkUserById(String id) {
        if (userDao.getUserById(id) == null) {
            return false;
        } else {
            return true;
        }
    }

    /**通过id，password和nickname注册一个用户
     * @param id
     * @param password
     * @param nickname
     * @return 返回注册结果是否成功
     */
    public boolean register(String id, String password, String nickname) {
        User user = new User();
        user.setUserId(id);
        user.setPassword(SecurityTools.md5(password));
        user.setName(nickname);
        user.setRole(roleDao.getRoleById("1001"));
        return userDao.insert(user);
    }

    /**
     * 通过userId获取该用户的nickname和roleName
     *
     * @param userId
     * @return 返回该用户的JSON字符串
     */
    public String getNicknameAndRolenameByUserId(String userId) {
        JSONObject jsonObject = new JSONObject();
        User user = userDao.getUserById(userId);
        jsonObject.put("nickname", nullCheck(user.getName()));
        jsonObject.put("roleName", nullCheck(user.getRole().getRoleName()));
        return jsonObject.toString();
    }

}

package com.shupv.service;

/**
 * Created by zihua on 17-4-16.
 */

import com.shupv.dao.ProjectDao;
import com.shupv.dao.RoleDao;
import com.shupv.dao.UserDao;
import com.shupv.entity.Project;
import com.shupv.entity.User;
import com.shupv.tools.SecurityTools;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Set;

import static com.shupv.tools.SecurityTools.nullCheck;

@Service
public class SystemService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;

    @Autowired
    private ProjectDao projectDao;

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

    public  String createProject(String userId,String projectName){
        return projectDao.createProject(userId,projectName).toString();
    }


    /**
     * 通过userId查找该用户的所有创建过的项目
     * @param userId
     * @return 返回该用户所有的项目（所含属性为projectName，buildDate）
     *      的JSON字符串
     */
    public String getProjects(String userId){
        JSONArray jsonArray = new JSONArray();
        Set<Project> projects = userDao.getProjectsById(userId);
        for (Project i:projects) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("projectName", nullCheck(i.getProjectName()));
            jsonObject.put("buildDate", nullCheck(i.getBuildDate()));
            jsonObject.put("comment",nullCheck(i.getComment()));
            jsonArray.put(jsonObject);
        }
        return jsonArray.toString();
    }

    public String updateProject(String projectId){
        return projectDao.updateProject(projectId).toString();
    }

}

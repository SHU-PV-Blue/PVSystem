package com.shupv.dao;

import com.shupv.entity.Project;
import com.shupv.entity.User;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.TreeSet;

/**
 * Created by chengs on 17-4-22.
 */
/*
* 1.通过Cookie获取用户的唯一标识ID
* 2.
*
* 新增/查询/删除/修改
*
* */


@Repository
public class ProjectDao extends BaseDao {
    @Autowired
    private UserDao userDao;

    /**
     * 创建项目
     *
     * @param userId
     * @return 返回{"status":"true"}
     */
    public JSONObject createProject(String userId, String projectName) {
        JSONObject result = new JSONObject();
        User user = this.getSession().get(User.class, userId);
        try {
            Project project = new Project();
            project.setProjectName(projectName);
            project.setUser(user);
            project.setBuildDate(new Date());
            this.getSession().save(project);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
        } finally {
            return result;
        }
    }

    public JSONObject updateProject(String projectId) {
        JSONObject result = new JSONObject();
        User user = this.getSession().get(User.class, projectId);
        try {

        } catch (Exception e) {

        } finally {
            return result;
        }
    }

    /**
     * 通过项目的projectName和用户的id来获取项目信息
     * @param p_name,u_id
     * @return
     */
    public Project getProjectByPNameAndUId(String u_id, String p_name){
        try {
            User user = userDao.getUserById(u_id);
            Project project = (Project) this.getSession().
                    createQuery("from Project where projectName=? and user=?")
                    .setParameter(0, p_name)
                    .setParameter(1, user)
                    .list()
                    .get(0);
            return project;
        }catch (NullPointerException e){
            return null;
        }
    }

    /**
     * 更新项目信息，返回是否成功
     * @param project
     * @return
     */
    public boolean update(Project project){
        try {
            this.getSession().save(project);
            return true;
        }catch (Exception e){
            return false;
        }
    }


    public Project getCurrentProject(String userId, String projectName) {
        User u = this.getSession().get(User.class, userId);
        TreeSet<Project> t = new TreeSet<Project>(u.getProjectSet());
        Project pr = null;
        if (projectName.equals("###latest###")) {
            for (Project p : t) {
                pr = p;
                break;
            }
        } else {
            for (Project p : u.getProjectSet()) {
                if (p.getProjectName().equals(projectName)) {
                    pr = p;
                    break;
                }
            }
        }

        return pr;
    }
}

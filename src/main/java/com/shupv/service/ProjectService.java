package com.shupv.service;


import com.shupv.dao.ProjectDao;
import com.shupv.entity.ClimaticData;
import com.shupv.entity.Project;
import com.shupv.tools.JSONStatus;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

import static com.shupv.tools.SecurityTools.nullCheck;
import static com.shupv.tools.SkipJson.formatProject;

/**
 * Created by zihua on 17-4-30.
 */
@Service
public class ProjectService {
    @Autowired
    private ProjectDao projectDao;

    public String getCurrentProject(String userId, String projectName) {
        Project project = projectDao.getCurrentProject(userId, projectName);
        return formatProject(project).toString();
    }

    public String ckeckProjectName(String userId, String projectName) {
        Project project = projectDao.getCurrentProject(userId, projectName);
        if(project==null)return new JSONStatus(true).toString();
        else return new JSONStatus(false).toString();
    }

    /**
     * 通过项目的projectName和用户的id来获取项目信息
     * @param p_name,u_id
     * @return 项目信息的JSON字符串
     */
    public String getProjectInfo(String u_id, String p_name){
        Project project = projectDao.getProjectByPNameAndUId(u_id, p_name);
        if (project == null){
            JSONStatus jsonStatus = new JSONStatus(false);
            return jsonStatus.toString();
        }else {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("projectId", u_id);
            jsonObject.put("buildDate", nullCheck(project.getBuildDate()));
            jsonObject.put("col", nullCheck(project.getCol()));
            jsonObject.put("row", nullCheck(project.getRow()));
            jsonObject.put("comment", nullCheck(project.getComment()));
            jsonObject.put("projectName", p_name);
            jsonObject.put("site", nullCheck(project.getSite()));
            return jsonObject.toString();
        }
    }

    /**
     * 更改项目信息（注：如果一个属性值为空，用空字符串表示）
     * @param u_id,p_name,jsonStr
     * @return 是否成功修改
     */
    public String updateProjectInfo(String u_id, String p_name, String jsonStr){
        JSONObject jsonObject = new JSONObject(jsonStr);
        Project project = projectDao.getProjectByPNameAndUId(u_id, p_name);
        if (jsonObject.getString("projectName") != null){
            project.setProjectName(jsonObject.getString("projectName"));
        }
        project.setCol(jsonObject.getInt("col"));
        project.setRow(jsonObject.getInt("row"));
        project.setComment(jsonObject.getString("comment"));
        project.setSite(jsonObject.getString("site"));
        JSONStatus isOk = new JSONStatus(projectDao.update(project));
        return isOk.toString();
    }

    /**
     * 通过用户的id和项目的name获取项目的气象信息
     * @param u_id
     * @param p_name
     * @return
     */
    public String getClimaticInfo(String u_id, String p_name){
        Project project = projectDao.getProjectByPNameAndUId(u_id, p_name);
        if (project.getClimaticData() == null){
            return new JSONStatus(false).toString();
        }
        else {
            ClimaticData climaticData = project.getClimaticData();
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("climaticId", nullCheck(climaticData.getClimaticId()));
            jsonObject.put("month", nullCheck(climaticData.getMonth()));
            jsonObject.put("irradiance", nullCheck(climaticData.getIrradiance()));
            jsonObject.put("temperature", nullCheck(climaticData.getTemperature()));
            jsonObject.put("humidity", nullCheck(climaticData.getHumidity()));
            jsonObject.put("windSpeed", nullCheck(climaticData.getWindSpeed()));
            jsonObject.put("longitude", nullCheck(climaticData.getLongitude()));
            jsonObject.put("latitude", nullCheck(climaticData.getLatitude()));
            return jsonObject.toString();
        }
    }
    /**
     * 方位角，倾角查询
     * （注：如果属性值都为空，用空字符串表示，公式没拿到）
     * @param jsonStr
     * @return res.toString();
     * by lcc
     */
    public String getfwqj(String jsonStr){
        if(jsonStr==null)
            return "null";
        JSONObject jsonObject=new JSONObject(jsonStr);
        //获取方位角和倾角
        double fwj=jsonObject.getDouble("fwj");
        double qj=jsonObject.getDouble("qj");
        //计算年总辐照度
        double nzfzd=0;
        //计算组件年输出电量
        double zjnscdl=0;
        //计算月总辐照度
        double yzfzd=0;
        //计算组件月输出电量
        double zjyscdl=0;
        JSONObject res=new JSONObject();
        res.put("nzfzd",nzfzd);
        res.put("zjnscdl",zjnscdl);
        res.put("yzfzd",yzfzd);
        res.put("zjyscdl",zjyscdl);
        return res.toString();
    }
    /**
     * 组件布局查询(公式都不知道！！！），没写好，暂时这样
     * （注：如果属性值都为空，用空字符串表示）
     *
     */
    public String getzjbj(String jsonStr){
        if(jsonStr==null)
            return "null";
        JSONObject jsonObject=new JSONObject(jsonStr);
        //获取容量(KW）,总组件数(个)，区域长L(m)，左右间距d(m)，区域宽W(m),m数,n数,前后间距(D(m))
        double rl=jsonObject.getDouble("rl");
        double zzjs=jsonObject.getDouble("zzjs");
        double qyc=jsonObject.getDouble("qyc");
        double zyjj=jsonObject.getDouble("zyjj");
        double qyk=jsonObject.getDouble("qyk");
        double mshu=jsonObject.getDouble("mshu");
        double nshu=jsonObject.getDouble("nshu");
        double qhjj=jsonObject.getDouble("qhjj");
        //计算区域长可放置阵列数，左右剩余间距(m)，区域长可放置阵列数，前后剩余间距(m)，区域宽可放置阵列数
        //总占地面积(m2)，总组件数(个)，总容量(KW)
        double xxxxxxx=0;
        return "0";
    }
    /**
     * 查询当前用户所有项目 返回 id 项目名称 创建时间
     * @param userId
     * @return String
     */
    public String getMyProject(String userId){
        Set<Project> projects=projectDao.getAllProjects(userId);
        JSONArray jsonArr=new JSONArray();
        for(Project p:projects){
            JSONObject jsonStr=new JSONObject();
            jsonStr.put("p_id",nullCheck(p.getProjectId()));
            jsonStr.put("p_name",nullCheck(p.getProjectName()));
            jsonStr.put("p_buildDate",nullCheck(p.getBuildDate()));
            jsonArr.put(jsonStr);
        }
        return jsonArr.toString();
    }
}

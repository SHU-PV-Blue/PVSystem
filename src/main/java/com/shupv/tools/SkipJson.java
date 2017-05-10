package com.shupv.tools;

import com.shupv.entity.Project;
import org.json.JSONObject;

import static com.shupv.tools.SecurityTools.nullCheck;


/**
 * Created by zihua on 17-4-30.
 */
public class SkipJson {
    public static JSONObject formatProject(Project project) {
        JSONObject jso = new JSONObject();
        jso.put("projectName", nullCheck(project.getProjectName()));
        jso.put("projectId", nullCheck(project.getProjectId()));
        return jso;
    }




}

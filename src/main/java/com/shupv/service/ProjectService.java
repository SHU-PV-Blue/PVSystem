package com.shupv.service;

import com.shupv.dao.ProjectDao;
import com.shupv.entity.Project;
import com.shupv.tools.JSONStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}

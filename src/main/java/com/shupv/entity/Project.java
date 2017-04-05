package com.shupv.entity;

import java.util.Date;

/**
 * Created by cc on 17-4-4.
 */
public class Project {
    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public PVPanel getPvPanel() {
        return pvPanel;
    }

    public void setPvPanel(PVPanel pvPanel) {
        this.pvPanel = pvPanel;
    }

    public PVPanel getRow() {
        return row;
    }

    public void setRow(PVPanel row) {
        this.row = row;
    }

    public PVPanel getCol() {
        return col;
    }

    public void setCol(PVPanel col) {
        this.col = col;
    }

    public ClimaticData getClimaticData() {
        return climaticData;
    }

    public void setClimaticData(ClimaticData climaticData) {
        this.climaticData = climaticData;
    }

    public LowPressureDevice getLowPressureDevice() {
        return lowPressureDevice;
    }

    public void setLowPressureDevice(LowPressureDevice lowPressureDevice) {
        this.lowPressureDevice = lowPressureDevice;
    }

    public HighPressureDevice getHighPressureDevice() {
        return highPressureDevice;
    }

    public void setHighPressureDevice(HighPressureDevice highPressureDevice) {
        this.highPressureDevice = highPressureDevice;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public Date getBuildDate() {
        return buildDate;
    }

    public void setBuildDate(Date buildDate) {
        this.buildDate = buildDate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    private int projectId;
    private String projectName;
    private PVPanel pvPanel;
    private PVPanel row;
    private PVPanel col;
    private ClimaticData climaticData;
    private LowPressureDevice lowPressureDevice;
    private HighPressureDevice highPressureDevice;
    private String site;//拟建地点
    private Date buildDate;
    private String comment;
}

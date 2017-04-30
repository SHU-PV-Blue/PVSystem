package com.shupv.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by cc on 17-4-4.
 */
@Entity
public class Project implements Serializable, Comparable<Project> {
    private int projectId;
    private String projectName;
    private PVPanel pvPanel;
    private int row;//光伏电板行数
    private int col;//光伏电板列数
    private ClimaticData climaticData;//气象数据
    private LowPressureDevice lowPressureDevice;//低压侧设备
    private HighPressureDevice highPressureDevice;//高压侧设备
    private String site;//拟建地点
    private Date buildDate;//建设时间
    private String comment;//备注
    private User user;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "userId")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
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

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "PVPId")
    public PVPanel getPvPanel() {
        return pvPanel;
    }

    public void setPvPanel(PVPanel pvPanel) {
        this.pvPanel = pvPanel;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "climaticId")
    public ClimaticData getClimaticData() {
        return climaticData;
    }

    public void setClimaticData(ClimaticData climaticData) {
        this.climaticData = climaticData;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "high_pressure_device_id")
    public LowPressureDevice getLowPressureDevice() {
        return lowPressureDevice;
    }

    public void setLowPressureDevice(LowPressureDevice lowPressureDevice) {
        this.lowPressureDevice = lowPressureDevice;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "lowPressureDeviceId")
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

    @Override
    public int compareTo(Project o) {
        return -1 * this.buildDate.compareTo(o.buildDate);
    }
}

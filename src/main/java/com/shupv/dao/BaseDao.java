package com.shupv.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;


/**
 * Created by Dell on 2017/4/22.
 */
public abstract class BaseDao {
    @Resource
    private SessionFactory sessionFactory;

    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    public Object nullCheck(Object o){
        return o == null ? "" : o;
    }
}
package com.lyq.dao.impl;

import com.lyq.bean.Admin;
import com.lyq.dao.AdminDao;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class AdminDaoImpl implements AdminDao {
    private HibernateTemplate hibernate;

    public void setHibernate(HibernateTemplate hibernate) {
        this.hibernate = hibernate;
    }

    @Override
    public Admin check(int id,String password) {
        String hql="from Admin am where am.admId=? and am.password=?";
        List<Admin> adminList=(List<Admin>)hibernate.find(hql,id,password);
        return adminList.size()>0?adminList.get(0):null;
    }
}

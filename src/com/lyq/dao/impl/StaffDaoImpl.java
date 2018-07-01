package com.lyq.dao.impl;

import com.lyq.bean.Staff;
import com.lyq.dao.StaffDao;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class StaffDaoImpl implements StaffDao {
    HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public Staff check(int id, String password) {
        String hql="from Staff sf where sf.sid=? and sf.sPassword=?";
        List<Staff> staffList=(List<Staff>)hibernateTemplate.find(hql,id,password);
        return staffList.size()>0?staffList.get(0):null;
    }

    @Override
    public String save(Staff staff) {
        int id=(int)hibernateTemplate.save(staff);
        if (id>0){
            return "success";
        }else {
               return  "添加失败，可能重复添加";
            }
    }

    @Override
    public List<Staff> query() {
        String hql="from Staff";
        List<Staff> staffList=(List<Staff>)hibernateTemplate.find(hql);
        return staffList;
    }

    @Override
    public void delete(int id){
        Staff staff;
        staff=hibernateTemplate.get(Staff.class,id);
        if(staff!=null){
            hibernateTemplate.delete(staff);
        }
    }

    @Override
    public Staff find(int id) {
        String hql="from Staff sf where sf.sid=?";
        List<Staff> staffList=(List<Staff>)hibernateTemplate.find(hql,id);
        return staffList.size()>0?staffList.get(0):null;
    }

    @Override
    public List<Integer> idList() {
        String hql="select sf.sid from Staff sf";
        return (List<Integer>)hibernateTemplate.find(hql);
    }

    @Override
    public void update(Staff staff) {
        hibernateTemplate.saveOrUpdate(staff);
    }

}

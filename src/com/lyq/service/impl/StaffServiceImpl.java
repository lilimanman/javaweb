package com.lyq.service.impl;

import com.lyq.bean.Staff;
import com.lyq.dao.StaffDao;
import com.lyq.service.StaffService;

import java.util.List;

public class StaffServiceImpl implements StaffService {
    StaffDao staffDao;

    public void setStaffDao(StaffDao staffDao) {
        this.staffDao = staffDao;
    }

    @Override
    public Staff check(int id, String password) {
        return staffDao.check(id,password);
    }
    @Override
    public List<Staff> query() {
        return staffDao.query();
    }
    @Override
    public String save(Staff staff){
        return staffDao.save(staff);
    }

    @Override
    public void delete(int id) {
        staffDao.delete(id);
    }

    public Staff find(int id){
        return staffDao.find(id);
    }

    @Override
    public List<Integer> idList() {
        return staffDao.idList();
    }

    @Override
    public void update(Staff staff) {
        staffDao.update(staff);
    }
}

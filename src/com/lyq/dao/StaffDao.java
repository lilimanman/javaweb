package com.lyq.dao;

import com.lyq.bean.Staff;

import java.util.List;

public interface StaffDao {
    public Staff check(int id, String password);
    public String save(Staff staff);
    public List<Staff> query();
    public void delete(int id);
    public Staff find(int id);
    public List<Integer> idList();
    public  void update(Staff staff);

}
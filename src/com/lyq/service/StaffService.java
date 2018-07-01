package com.lyq.service;

import com.lyq.bean.Staff;

import java.util.List;

public interface StaffService {
    public Staff check(int id,String password);
    public List<Staff> query();
    public String save(Staff staff);
    public void delete(int id);
    public Staff find(int id);
    public void update(Staff staff);
    public List<Integer> idList();
}

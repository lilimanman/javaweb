package com.lyq.dao;

import com.lyq.bean.Admin;

public interface AdminDao {
    public Admin check(int id,String password);
}

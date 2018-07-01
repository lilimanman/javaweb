package com.lyq.action;

import com.lyq.service.AdminService;
import com.lyq.service.StaffService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport{
    private int sid;
    private String password;
    private String message;
    private AdminService adminService;
    private StaffService staffService;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    public void setStaffService(StaffService staffService) {
        this.staffService = staffService;
    }

    public String getMessage() {
        return message;
    }

    public String login(){
        if(staffService.check(sid,password)==null){
            if (adminService.check(sid, password) == null) {
                message = "账号不存在或密码错误";
                return ERROR;
            }else{
                return "admin";
            }
        }else{
            return "staff";
        }
    }

}

package com.lyq.action;

import com.lyq.bean.Staff;
import com.lyq.service.StaffService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.lang.model.element.NestingKind;
import java.util.List;

public class StaffAction extends ActionSupport {
    private int sid;
    private String name;
    private int base;
    private int add;
    private String message;
    private StaffService staffService;

    public void setSid(int sid) {
        this.sid = sid;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setBase(int base) {
        this.base = base;
    }
    public void setAdd(int add) {
        this.add = add;
    }
    public String getMessage() {
        return message;
    }
    public void setStaffService(StaffService staffService) {
        this.staffService = staffService;
    }

    public String information(){
        List<Staff> staffList=staffService.query();
        ActionContext.getContext().getApplication().put("staffs" ,staffList);
        return SUCCESS;
    }
    public String staffSave(){
        Staff staff=new Staff();
        staff.setsName(name);
        staff.setsBase(base);
        staff.setsAdd(add);
        if(staffService.save(staff)=="success"){
            return SUCCESS;
        }else{
            message=staffService.save(staff);
            return ERROR;
        }
    }
    public String staffDelete(){
        staffService.delete(sid);
        return SUCCESS;
    }
    public String find(){
        Staff staff=staffService.find(sid);
        ActionContext.getContext().getApplication().put("staff",staff);
        return SUCCESS;
    }
    public String ids(){
        List<Integer> integers=staffService.idList();
        ActionContext.getContext().getApplication().put("ids",integers);
        return SUCCESS;

    }

    public String staffUpdate(){
        Staff staff=staffService.find(sid);
        staff.setsBase(base);
        staff.setsAdd(add);
        staffService.update(staff);
        return SUCCESS;
    }

}

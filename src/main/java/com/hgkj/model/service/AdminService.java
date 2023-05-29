package com.hgkj.model.service;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;

import java.util.List;

public interface AdminService {
    public List<Teacher> allTeacherByIdService(Teacher teacher);
    public int updateAdminPwdService(String userPwd, String userName);
    public User allUserByIdService(String userName);
}

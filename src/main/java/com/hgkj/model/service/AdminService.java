package com.hgkj.model.service;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;

import java.util.List;

public interface AdminService {
    public List<Teacher> allTeacherByIdService(String userName);
    public int updateAdminPwdService(String userPwd, String userName);
    public User allUserByIdService(String userName);
    public int addTeacherService(Teacher teacher);
    public int delTeacherService(int teacherId);
}

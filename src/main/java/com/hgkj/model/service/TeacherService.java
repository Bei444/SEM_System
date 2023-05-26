package com.hgkj.model.service;

import com.hgkj.model.entity.Teacher;

public interface TeacherService {
    public String allTeacherByIdAndPwdService(int teacherId, String teacherPwd);
    public Teacher allTeacherByNameService(String teacherName);
    public Teacher allTeacherByIdService(int teacherId);
}
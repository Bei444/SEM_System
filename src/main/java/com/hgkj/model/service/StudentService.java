package com.hgkj.model.service;

import com.hgkj.model.entity.Student;

public interface StudentService {
    public String allStudentByStuIdAndStuPwdService(int userId, String userPwd);
    public int addStudent(Student student);
    public Student allStudentByIdService(int studentId);
    public int updateStudentPwdService(String studentPwd,int studentId);
}
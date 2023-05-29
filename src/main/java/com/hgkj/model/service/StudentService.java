package com.hgkj.model.service;

import com.hgkj.model.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
    public String allStudentByStuIdAndStuPwdService(int userId, String userPwd);
    public int addStudent(Student student);
    public Student allStudentByIdService(int studentId);
    public int updateStudentPwdService(String studentPwd,int studentId);
    public int updateStudentTelService(long studentTel,int studentId);
    public List<Student> allStudentByTeacherIdService( int teacherId);
}
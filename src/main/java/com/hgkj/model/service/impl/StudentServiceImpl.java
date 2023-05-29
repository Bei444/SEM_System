package com.hgkj.model.service.impl;

import com.hgkj.model.dao.StudentDao;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentDao studentDao;

    @Override
    public String allStudentByStuIdAndStuPwdService(int userId, String userPwd) {
        return studentDao.allStudentByStuIdAndStuPwdDao(userId, userPwd);
    }

    @Override
    public int addStudent(Student student) {
        return studentDao.addStudent(student);
    }

    @Override
    public Student allStudentByIdService(int studentId) {
        return studentDao.allStudentByIDao(studentId);
    }

    @Override
    public int updateStudentPwdService( String studentPwd,int studentId) {
        return studentDao.updateStudentPwdDao(studentPwd,studentId);
    }

    @Override
    public int updateStudentTelService(long studentTel, int studentId) {
        return studentDao.updateStudentTelDao(studentTel, studentId);
    }

    @Override
    public List<Student> allStudentByTeacherIdService(int teacherId) {
        return studentDao.allStudentByTeacherIdDao(teacherId);
    }
}
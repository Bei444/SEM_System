package com.hgkj.model.service.impl;

import com.hgkj.model.dao.TeacherDao;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherDao teacherDao;
    @Override
    public String allTeacherByIdAndPwdService(int teacherId, String teacherPwd) {
        return teacherDao.allTeacherByIdAndPwdDao(teacherId, teacherPwd);
    }

    @Override
    public Teacher allTeacherByNameService(String teacherName) {
        return teacherDao.allTeacherByNameDao(teacherName);
    }

    @Override
    public Teacher allTeacherByIdService(int teacherId) {
        return teacherDao.allTeacherByIdDao(teacherId);
    }
}

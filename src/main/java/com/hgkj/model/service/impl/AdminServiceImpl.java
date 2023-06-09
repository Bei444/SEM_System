package com.hgkj.model.service.impl;

import com.hgkj.model.dao.AdminDao;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao adminDao;
    @Override
    public List<Teacher> allTeacherByIdService(String userName) {
        return adminDao.allTeacherByIdDao(userName);
    }
    @Override
    public int updateAdminPwdService(String userPwd, String userName) {
        return adminDao.updateAdminPwdDao(userPwd,userName);
    }
    @Override
    public User allUserByIdService(String userName) {
        return adminDao.allUserByIdDao(userName);
    }
    @Override
    public int addTeacherService(Teacher teacher) {
        return adminDao.addTeacherDao(teacher);
    }

    @Override
    public int delTeacherService(int teacherId) {
        return adminDao.delTeacherDao(teacherId);
    }
}

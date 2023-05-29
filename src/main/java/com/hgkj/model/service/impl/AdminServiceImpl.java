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
    public List<Teacher> allTeacherByIdService(int teacherId) {
        return adminDao.allTeacherByIdDao(teacherId);
    }
    @Override
    public int updateAdminPwdService(String userPwd, String userName) {
        return adminDao.updateAdminPwdDao(userPwd,userName);
    }
    @Override
    public User allUserByIdService(String userName) {
        return adminDao.allUserByIdDao(userName);
    }
}

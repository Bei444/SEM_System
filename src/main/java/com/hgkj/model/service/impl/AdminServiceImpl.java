package com.hgkj.model.service.impl;

import com.hgkj.model.dao.AdminDao;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao adminDao;
    @Override
    public List<Teacher> allTeacherByIdDao(int teacherId) {
        return (List<Teacher>) adminDao.allTeacherByIdDao(teacherId);
    }
}

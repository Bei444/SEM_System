package com.hgkj.model.service.impl;

import com.hgkj.model.dao.EmploymentDao;
import com.hgkj.model.entity.Employment;
import com.hgkj.model.service.EmploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmploymentServiceImpl implements EmploymentService {
    @Autowired
    EmploymentDao employmentDao;

    @Override
    public List<Employment> allEmploymentByStudentIdService(int studentId) {
        return employmentDao.allEmploymentByStudentIdDao(studentId);
    }

    @Override
    public int addEmploymentService(Employment employment) {
        return employmentDao.addEmploymentDao(employment);
    }

    @Override
    public int updateEmploymentByIdService(Employment employment, int employmentId) {
        return employmentDao.updateEmploymentByIdDao(employment, employmentId);
    }
}

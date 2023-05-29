package com.hgkj.model.service;

import com.hgkj.model.entity.Employment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmploymentService {
    public List<Employment> allEmploymentByStudentIdService(int studentId);
    public int addEmploymentService(Employment employment);
    public  int updateEmploymentByIdService(Employment employment,int employmentId);
}
package com.hgkj.model.service;

import com.hgkj.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {
    public List<Teacher> allTeacherByIdDao(int teacherId);
}

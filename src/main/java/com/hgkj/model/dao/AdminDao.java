package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdminDao {
    @Select("select * from teacher where teacherId=#{teacherId}")
    public List<Teacher> allTeacherByIdDao(@Param("teacherId")int teacherId);
}

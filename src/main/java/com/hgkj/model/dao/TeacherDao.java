package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface TeacherDao {
    @Select("select teacherName from teacher where teacherId=#{teacherId} and teacherPwd=#{teacherPwd} ;")
    public String allTeacherByIdAndPwdDao(@Param("teacherId") int teacherId, @Param("teacherPwd") String teacherPwd);
    @Select("select * from teacher where teacherName=#{teacherName};")
    public Teacher allTeacherByNameDao(@Param("teacherName")String teacherName);
    @Select("select * from teacher where teacherId=#{teacherId};")
    public Teacher allTeacherByIdDao(@Param("teacherId")int teacherId);
}
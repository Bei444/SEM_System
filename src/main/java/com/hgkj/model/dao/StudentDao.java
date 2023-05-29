package com.hgkj.model.dao;

import com.hgkj.model.entity.Student;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface StudentDao {
    @Select("select studentName from student where studentId=#{studentId} and studentPwd=#{studentPwd} ;")
    public String allStudentByStuIdAndStuPwdDao(@Param("studentId") int studentId, @Param("studentPwd") String studentPwd);

    @Insert("insert into student(studentId,studentName,studentPwd,classes,studentSex,major,college,studentTel," +
            "teacherId,teacherName,schoolRecord) " +
            "values" +
            "(#{studentId}," +
            "#{studentName},#{studentPwd},#{classes},#{studentSex},#{major},#{college},#{studentTel},#{teacherId}," +
            "#{teacherName}，#{schoolRecord})")
    public int addStudent(Student student);

    @Select("select * from student where studentId=#{studentId} ;")
    public Student allStudentByIDao(@Param("studentId") int studentId);

    @Update("update student set studentPwd=#{newOne_password} where studentId=#{studentId}")
    public int updateStudentPwdDao(@Param("newOne_password") String newOne_password, @Param("studentId") int studentId);

    @Update("update student set studentTel=#{studentTel} where studentId=#{studentId}")
    public int updateStudentTelDao(@Param("studentTel") long studentTel, @Param("studentId") int studentId);

    @Select("select * from student where teacherId=#{teacherId} ;")
    public List<Student> allStudentByTeacherIdDao(@Param("teacherId") int teacherId);



}
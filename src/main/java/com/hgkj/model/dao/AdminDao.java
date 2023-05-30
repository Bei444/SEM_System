package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface AdminDao {
    @Select("select * from teacher where userName=#{userName}")
    public List<Teacher> allTeacherByIdDao(@Param("userName")String userName);
    @Update("update user set userPwd=#{newOne_password} where userName=#{userName}")
    public int updateAdminPwdDao(@Param("newOne_password") String newOne_password,@Param("userName")String userName);
    @Select("select * from user where userName=#{userName}")
    public User allUserByIdDao(@Param("userName")String userName);
    @Insert("insert into teacher(teacherId,teacherName,teacherPwd,teacherSex,college,major,teacherTel,userName)" +
            "values (#{teacherId},#{teacherName},#{teacherPwd},#{teacherSex},#{college},#{major},#{teacherTel},#{userName})")
    public int addTeacherDao(Teacher teacher);
    @Delete("delete from teacher where teacherId=#{teacherId}")
    public int delTeacherDao(int teacherId);

}

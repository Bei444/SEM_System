package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface AdminDao {
    @Select("select * from teacher where teacherId=#{teacherId}")
    public List<Teacher> allTeacherByIdDao(@Param("teacherId")int teacherId);
    @Update("update user set userPwd=#{newOne_password} where userName=#{userName}")
    public int updateAdminPwdDao(@Param("newOne_password") String newOne_password,@Param("userName")String userName);
    @Select("select * from user where userName=#{userName}")
    public User allUserByIdDao(@Param("userName")String userName);
}

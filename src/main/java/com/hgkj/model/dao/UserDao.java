package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserDao {
    @Select("select userName from user where userId=#{userId} and userPwd=#{userPwd};")
    public String allUserByUserIdAndUserPwdDao(@Param("userId") int userId, @Param("userPwd") String userPwd);
    @Select("select * from user")
    public User allUserDao();

}
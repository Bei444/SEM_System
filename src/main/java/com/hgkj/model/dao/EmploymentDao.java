package com.hgkj.model.dao;

import com.hgkj.model.entity.Employment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface EmploymentDao {
    @Select("select * from employment where studentId=#{studentId} ;")
    public List<Employment> allEmploymentByStudentIdDao(@Param("studentId") int studentId);

    @Insert("insert into employment(studentId, studentName, studentSex, major, studentTel, employmentPost, salary, " +
            "employmentTime, employmentCompany, companyAddress, employmentContact, ContactTel, state) values " +
            "(#{studentId},#{studentName},#{studentSex},#{major},#{studentTel},#{employmentPost},#{salary}," +
            "#{employmentTime}," +
            "#{employmentCompany},#{companyAddress},#{employmentContact},#{contactTel},#{state}" +
            ")  ")
    public int addEmploymentDao(Employment employment);

    @Update("update employment set employmentPost=#{employmentPost},salary = #{salary}," +
            "employmentContact=#{employmentContact},ContactTel=#{ContactTel},state=#{state} where employmentId=#{employmentId};")
    public  int updateEmploymentByIdDao(Employment employment,@Param("employmentId")int employmentId);
}
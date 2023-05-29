package com.hgkj.model.entity;

import lombok.Data;

@Data
public class Employment {
    private int employmentId;
    private int studentId;
    private String studentName;
    private String studentSex;
    private String major;                    //专业
    private long studentTel;
    private String employmentPost;           //就业岗位
    private Double salary;                   //薪资
    private String employmentTime;           //就业时间
    private String employmentCompany;        //就业公司
    private String companyAddress;           //公司地址
    private String employmentContact;        //公司联系人
    private long contactTel;                 //公司联系人电话
    private String state;                    //就业状态

    public Employment() {
    }

    public Employment(String employmentPost, Double salary, String employmentContact, long contactTel, String state) {
        this.employmentPost = employmentPost;
        this.salary = salary;
        this.employmentContact = employmentContact;
        this.contactTel = contactTel;
        this.state = state;
    }
}
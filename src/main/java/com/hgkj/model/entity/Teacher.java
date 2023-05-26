package com.hgkj.model.entity;

import lombok.Data;

@Data
public class Teacher {
    private int TeacherId;
    private String TeacherName;
    private String TeacherPwd;
    private String TeacherSex;
    private long TeacherTel;
    private String college;
    private String major;
}
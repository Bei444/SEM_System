package com.hgkj.model.entity;

import lombok.Data;

@Data
public class Student {
    private int studentId;
    private String studentName;
    private String studentPwd;
    private String classes;
    private String studentSex;
    private String major;
    private String college;
    private long studentTel;
    private int teacherId;
    private String teacherName;
    private String schoolRecord;

    public Student() {
    }
}
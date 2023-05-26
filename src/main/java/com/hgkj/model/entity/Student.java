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

    public Student() {
    }

    public Student(int studentId, String studentName, String studentPwd, String classes, String studentSex,
                   String major, long studentTel, String teacherName) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentPwd = studentPwd;
        this.classes = classes;
        this.studentSex = studentSex;
        this.major = major;
        this.studentTel = studentTel;
        this.teacherName = teacherName;
    }
}
package com.hgkj.model.entity;

import lombok.Data;

@Data
public class User {
    private int userId;
    private String userName;
    private String userPwd;
    private String userIdentity;
    private String addTime;
    private Teacher teacher;
}
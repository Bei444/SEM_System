package com.hgkj.model.service;

import com.hgkj.model.entity.User;

public interface UserService {
    public String allUserByUserIdAndUserPwdService(int userId, String userPwd);
    public User allUserService();
}
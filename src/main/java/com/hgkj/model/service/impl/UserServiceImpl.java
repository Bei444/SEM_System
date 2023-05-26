package com.hgkj.model.service.impl;

import com.hgkj.model.dao.UserDao;
import com.hgkj.model.entity.User;
import com.hgkj.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public String allUserByUserIdAndUserPwdService(int userId, String userPwd) {
        return userDao.allUserByUserIdAndUserPwdDao(userId, userPwd);
    }

    @Override
    public User allUserService() {
        return userDao.allUserDao();
    }
}

package org.mall.service.impl;


import org.mall.bean.user;
import org.mall.dao.userDao;
import org.mall.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;

@Service
public class userServiceImpl implements userService {
    @Autowired
    private userDao userDao;

    //check currency information
    public user checkUser(String userName,String userPwd){
        user user = userDao.checkByUserNameAndPwd(userName, userPwd);
        if (user != null){
            return user;
        }return null;
    }

    //regist user
    public boolean regisr(String userName,String userPwd){
        int count = userDao.registUser(userName,userPwd);
        if (count<=0){
            return false;
        }else {
            return true;
        }
    }

    //cart find goods by userId
    public user showGoodsByUserId(long userId){
        user user = userDao.queryByUserIdWithGoods(userId);
        return user;
    }

}

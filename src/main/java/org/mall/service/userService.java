package org.mall.service;

import org.mall.bean.goods;
import org.mall.bean.user;

import java.util.List;

public interface userService {
    //check login
    user checkUser(String userName, String userPwd);

    //regist user
    boolean regisr(String userName, String userPwd);

    //find goods by userId
    user showGoodsByUserId(long userId);
}

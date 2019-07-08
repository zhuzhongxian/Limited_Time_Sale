package org.mall.dao;

import org.apache.ibatis.annotations.Param;
import org.mall.bean.user;

import java.util.List;

public interface userDao {
    /**
     * query goods by user_id
     * @param userId
     * @return
     */
    user queryByUserIdWithGoods(long userId);

    user checkByUserNameAndPwd(@Param("userName") String userName,@Param("userPwd") String userPwd);

    int registUser(@Param("userName") String userName,@Param("userPwd") String userPwd);
}

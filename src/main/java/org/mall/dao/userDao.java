package org.mall.dao;

import org.mall.bean.user;

public interface userDao {
    /**
     * query goods by user_id
     * @param userId
     * @return
     */
    user queryByUserIdWithGoods(long userId);
}

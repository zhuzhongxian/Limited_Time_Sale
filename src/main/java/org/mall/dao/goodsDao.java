package org.mall.dao;

import org.apache.ibatis.annotations.Param;
import org.mall.bean.goods;

import java.util.Date;
import java.util.List;

public interface goodsDao {
    /**
     * reduce goods number
     * @param goodsId
     * @param killTime
     * @return
     */
    int reduceNumber(@Param("goodsId") long goodsId, @Param("killTime") Date killTime);

    /**
     * get goods by id
     * @param goodsId
     * @return
     */
    goods queryById(long goodsId);

    /**
     * Search for goods based on offset
     * @param offset
     * @param limit
     * @return
     */
    List<goods> queryAll(@Param("offset")int offset, @Param("limit") int limit);

}

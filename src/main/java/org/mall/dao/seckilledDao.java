package org.mall.dao;

import org.apache.ibatis.annotations.Param;
import org.mall.bean.seckilled;

import java.util.Map;

public interface seckilledDao {
    /**
     * insert seckill details
     * ignore repetion
     * @param goodsId
     * @param userId
     * @return
     */
    int insertSuccessKilled(@Param("goodsId") long goodsId, @Param("userId") long userId);

    /**
     * select seckilled by goodsId with goods
     * @param goodsId
     * @return
     */
    seckilled queryByGoodsIdWithGoods(long goodsId);

    /**
     * use procedure for seckill
     * @param paramMap
     */
    void killByProcedure(Map<String,Object> paramMap);

}

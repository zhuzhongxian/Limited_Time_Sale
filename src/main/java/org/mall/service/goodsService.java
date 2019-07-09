package org.mall.service;

import org.mall.bean.goods;
import org.mall.dto.exposer;
import org.mall.dto.seckillExecution;
import org.mall.exception.repeatkillException;
import org.mall.exception.seckillBaseException;
import org.mall.exception.seckillCloseException;

import java.util.List;

//Service
public interface goodsService {
    /**
     * get all goods
     * @return
     */
    List<goods> getGoodsList();

    /**
     * get goods by id
     * @param goodsId
     * @return
     */
    goods getById(long goodsId);

    /**
     * export goods url
     * @param goodsId
     * @return
     */
    exposer exportGoodsUrl(long goodsId);

    /**
     *  execute seckill operation
     * @param goodsId
     * @param userId
     * @return  dto of seckillExecution
     * @throws seckillBaseException
     * @throws repeatkillException
     * @throws seckillCloseException
     */
    seckillExecution executeseckill(long goodsId, long userId)
            throws seckillBaseException, repeatkillException, seckillCloseException;
}

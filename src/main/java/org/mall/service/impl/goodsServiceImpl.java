package org.mall.service.impl;

import org.apache.commons.collections.MapUtils;
import org.mall.bean.goods;
import org.mall.bean.seckilled;
import org.mall.dao.cache.RedisDao;
import org.mall.dto.exposer;
import org.mall.dto.seckillExecution;
import org.mall.enums.statEnums;
import org.mall.exception.repeatkillException;
import org.mall.exception.seckillBaseException;
import org.mall.exception.seckillCloseException;
import org.mall.service.goodsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class goodsServiceImpl implements goodsService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private org.mall.dao.goodsDao goodsDao;
    @Autowired
    private org.mall.dao.seckilledDao seckilledDao;
    @Autowired
    private RedisDao redisDao;

    private final String token="asdsadsadsadsffdgfgfxkck";

    private String getMD5(long goodsId){
        String sign=goodsId+"/"+token;
        String md5= DigestUtils.md5DigestAsHex(sign.getBytes());
        return md5;
    }

    @Override
    public List<goods> getGoodsList(){
        return goodsDao.queryAll(0,4);
    }

    @Override
    public goods getById(long goodsId){
        goods goods = redisDao.getGoods(goodsId);
        if (goods == null){
            goods = goodsDao.queryById(goodsId);
            if (goods == null){
                return null;
            }else {
                redisDao.putGoods(goods);
            }
        }
        return goods;
    }

    @Override
    public exposer exportGoodsUrl(long goodsId){
        //research goods exit or not
        goods goods=goodsDao.queryById(goodsId);
        if (goods == null){
            return new exposer(false, goodsId);
        }
        //seckill goods is not begin or had closen
        Date startTime = goods.getStartTime();
        Date endTime = goods.getEndTime();
        Date nowTime = new Date();
        if (nowTime.getTime() < startTime.getTime() || nowTime.getTime() > endTime.getTime()){
            return new exposer(false, goodsId, nowTime.getTime(), startTime.getTime(), endTime.getTime());
        }
        //pull seckill goods url
        String md5 = getMD5(goodsId);
        return new exposer(true, md5, goodsId);
    }

    /**
     * execute seckill
     * @param goodsId
     * @param userId

     * @return
     * @throws seckillBaseException
     * @throws repeatkillException
     * @throws seckillCloseException
     */
    @Override
    @Transactional
    public seckillExecution executeseckill(long goodsId, long userId)
            throws seckillBaseException, repeatkillException, seckillCloseException {
        //check data is integrate
        /*if (md5 == null || !md5.equals(getMD5(goodsId))) {
            throw new seckillBaseException("data rewrite");
        }*/
        Date nowTime = new Date();
        /*Map<String,Object> map = new HashMap<String, Object>();
        map.put("goodsId",goodsId);
        map.put("userId",userId);
        map.put("killTime",nowTime);
        map.put("result",null);*/
        try {
            int insertcount = seckilledDao.insertSuccessKilled(goodsId, userId);
            if (insertcount <= 0) {
                throw new repeatkillException("this goods had been seckilled");
            } else {
                int updateCount = goodsDao.reduceNumber(goodsId, nowTime);
                if (updateCount <= 0) {
                    throw new seckillCloseException("seckill is close");
                } else {
                    seckilled seckilled = seckilledDao.queryByGoodsIdWithGoods(goodsId);
                    return new seckillExecution(goodsId, statEnums.SUCCESS, seckilled);
                }
            }
        /*try {
            seckilledDao.killByProcedure(map);
            int result = MapUtils.getInteger(map,"result",-2);*/
            //Throw exceptions in order
        } catch (seckillCloseException e1) {
            throw e1;
        } catch (repeatkillException e2) {
            throw e2;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            throw new seckillBaseException("inner error:" + e.getMessage());
        }
    }

    public seckillExecution executeSeckillProcedure(long goodsId, long userId)
            throws seckillBaseException, repeatkillException, seckillCloseException {
        Date nowTime = new Date();
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("goodsId",goodsId);
        map.put("userId",userId);
        map.put("killTime",nowTime);
        map.put("result",null);
        try {
            seckilledDao.killByProcedure(map);
            int result = MapUtils.getInteger(map,"result",-2);
            if (result==1){
                seckilled seckilled=seckilledDao.queryByGoodsIdWithGoods(goodsId);
                return new seckillExecution(goodsId, statEnums.SUCCESS, seckilled);
            }else {
                return null;
            }
            //Throw exceptions in order
        } catch (seckillCloseException e1) {
            throw e1;
        } catch (repeatkillException e2) {
            throw e2;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            throw new seckillBaseException("inner error:" + e.getMessage());
        }
    }

}

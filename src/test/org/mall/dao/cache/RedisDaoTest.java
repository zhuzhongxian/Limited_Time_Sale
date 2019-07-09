package org.mall.dao.cache;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mall.bean.goods;
import org.mall.dao.goodsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml"})
public class RedisDaoTest {
    private long goodsId=1;

    @Autowired
    private RedisDao redisDao;
    @Autowired
    private goodsDao goodsDao;

    @Test
    public void getGoods() {
        goods goods = redisDao.getGoods(goodsId);
        if (goods == null){
            goods = goodsDao.queryById(goodsId);
            if (goods != null){
                String result = redisDao.putGoods(goods);
                System.out.println(result);
                goods = redisDao.getGoods(goodsId);
                System.out.println(goods);
            }
        }
    }

    @Test
    public void putGoods() {
    }
}
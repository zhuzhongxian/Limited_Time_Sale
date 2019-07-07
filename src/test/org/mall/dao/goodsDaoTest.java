package org.mall.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml"})
public class goodsDaoTest {
    @Resource
    private goodsDao goodsDao;
    @Test
    public void reduceNumber() {
        Date date=new Date();
        int count=goodsDao.reduceNumber(1,date);
        System.out.println(count);
    }

    @Test
    public void queryById() {
    }

    @Test
    public void queryAll() {
    }
}
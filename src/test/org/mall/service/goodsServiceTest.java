package org.mall.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mall.dao.userDao;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml"})
@Service
public class goodsServiceTest {
    @Resource
    private goodsService goodsService;
    @Test
    public void executeSeckillProcedure() {
        goodsService.executeSeckillProcedure(1,1);
    }
}
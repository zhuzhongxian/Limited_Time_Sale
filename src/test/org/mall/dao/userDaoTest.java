package org.mall.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mall.bean.user;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml"})
public class userDaoTest {
    @Resource
    private userDao userDao;
    @Test
    public void queryByUserIdWithGoods() {
    }

    @Test
    public void checkByUserNameAndPwd() {
        user user = userDao.checkByUserNameAndPwd("zzx","zzx");
        System.out.println(user);
    }

    @Test
    public void registUser() {
        int count = userDao.registUser("z","x");
        System.out.println(count);
    }

}
package com.tosit.cinema.service;

import com.tosit.cinema.entity.Cinema;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/7.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring.xml")
public class CinemaServiceTest {

    @Autowired
    private CinemaService cinemaService;
    @Test
    public void testfindListByMid(){

        List<Cinema> list = cinemaService.findListByMid(1);
        Assert.assertNotNull(list);
        Assert.assertEquals(2,list.size());

    }
}

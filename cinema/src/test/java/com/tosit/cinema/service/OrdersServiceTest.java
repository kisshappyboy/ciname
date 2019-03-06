package com.tosit.cinema.service;

import com.tosit.cinema.entity.Orders;
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
public class OrdersServiceTest {

    @Autowired
    private OrderService orderService;
    @Test
    public void testSaveOrder(){


        orderService.saveOrder(1,new String[]{"7-1"});
//        orderService.saveOrder(1,new String[]{"5-1","5-2"});

    }

    @Test
    public void testFindOrderListByUId(){
        List<Orders> list = orderService.findOrderListByUId(1);
        Assert.assertNotNull(list);
        Assert.assertEquals("中国合伙人",list.get(0).getmName());
    }
}

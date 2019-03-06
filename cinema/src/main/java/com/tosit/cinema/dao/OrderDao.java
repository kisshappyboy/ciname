package com.tosit.cinema.dao;

import com.tosit.cinema.entity.Orders;
import com.tosit.cinema.entity.StateMonth;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface OrderDao {
    void saveOrder(Orders order);

    List<Orders> findOrderListByUId(int i);

    List<StateMonth> findMonthSellData();
}

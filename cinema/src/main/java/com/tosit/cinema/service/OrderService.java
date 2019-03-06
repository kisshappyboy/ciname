package com.tosit.cinema.service;

import com.tosit.cinema.entity.Orders;
import com.tosit.cinema.entity.StateMonth;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface OrderService {
    /**
     * 保存订单
     * @param tId  场次id
     * @param seatNo 座位编号（1-1,1-2）
     */
    void saveOrder(Integer tId, String[] seatNo);

    /**
     * 查找用户对应订单
     * @param i 用户编号
     * @return
     */
    List<Orders> findOrderListByUId(int i);

    /**
     * 月销售额数据
     * @return
     */
    StateMonth monthSellData();
}

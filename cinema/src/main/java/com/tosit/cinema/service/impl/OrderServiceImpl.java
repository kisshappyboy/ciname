package com.tosit.cinema.service.impl;

import com.tosit.cinema.dao.OrderDao;
import com.tosit.cinema.dao.TimesDao;
import com.tosit.cinema.entity.Orders;
import com.tosit.cinema.entity.StateMonth;
import com.tosit.cinema.entity.Times;
import com.tosit.cinema.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private TimesDao timesDao;

    @Autowired
    private OrderDao orderDao;

    @Override
    public void saveOrder(Integer tId, String[] seatNos) {
        //根据tid查询出场次信息
        Times times = timesDao.findById(tId);

        //单价
        BigDecimal price= times.getPrice();
        //票数
        BigDecimal count = new BigDecimal(seatNos.length);
        //总价
        BigDecimal totalPrice = price.multiply(count);
        //时间
        Date now = new Date();
        //选中的座位
        String selectedSeats = "";
        for(String seatNo:seatNos){
            selectedSeats+=seatNo+",";
        }
        //砍掉尾巴 ,
        selectedSeats=selectedSeats.substring(0,selectedSeats.length()-1);

        Orders order = new Orders();
        order.setPrice(price);
        order.setCount(count.intValue());
        order.setTotalPrice(totalPrice);
        order.setPayTime(now);
        order.setTimes(times);
        order.setSelectedSeats(selectedSeats);


        //验证该座位是否已锁定
        for(int i = 0 ;i < seatNos.length;i++){
            //已锁定列表中已有该座位
            if(times.getLockedSeats().indexOf(seatNos[i])!=-1){
                    throw new RuntimeException("已锁定列表中已有该座位："+seatNos[i]);
            }
        }


        //保存订单到数据库
        orderDao.saveOrder(order);


        //更新场次lockedSeats(卖出的座位)
        String lockedSeats = times.getLockedSeats()+","+selectedSeats;

        timesDao.updateLockedSeatsByTid(times.gettId(),lockedSeats);



    }

    @Override
    public List<Orders> findOrderListByUId(int i) {
        return orderDao.findOrderListByUId(i);
    }

    @Override
    public StateMonth monthSellData() {
        StateMonth result = new StateMonth();


        List<StateMonth> list = orderDao.findMonthSellData();
        String[] categories = new String[list.size()];
        String[] data = new String[list.size()];

        for(int i =0 ;i < list.size();i++){
            StateMonth each = list.get(i);
            categories[i]=each.getMonth();
            data[i]=each.getMoney().toString();
        }

        result.setCategories(categories);
        result.setData(data);

        return result;
    }
}

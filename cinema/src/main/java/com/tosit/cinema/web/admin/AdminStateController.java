package com.tosit.cinema.web.admin;

import com.tosit.cinema.entity.StateMonth;
import com.tosit.cinema.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/1.
 */
 @Controller
public class AdminStateController {

	@Autowired
	private OrderService orderService;
	@RequestMapping("/state_month")
	public String state_month(){
		return "state_month";
	}



	@RequestMapping("/state_month_data")
	public @ResponseBody
	StateMonth state_month_data(){

		return orderService.monthSellData();
	}
}

package com.tosit.cinema.web.font;
import com.tosit.cinema.entity.Orders;
import com.tosit.cinema.entity.Times;
import com.tosit.cinema.service.OrderService;
import com.tosit.cinema.service.TimesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private TimesService timesService;

    @RequestMapping("/save")
    public String showList(Integer tId, String[] seatNo, HttpServletResponse response,ModelMap modelMap){

        try{
            //下订单
            orderService.saveOrder(tId,seatNo);

            //获取最新订单数据
            List<Orders> ordersList = orderService.findOrderListByUId(1);

            modelMap.put("ordersList",ordersList);
        }catch (Exception e){
            //请求转发
            Times times =timesService.findById(tId);
            modelMap.put("errorMsg",e.getMessage());
            modelMap.put("times",times);
            return "mypay_selectticket";

            //弹出对话框
//            response.setContentType("text/html;charset=utf-8");
//            try {
//                PrintWriter out = response.getWriter();
//                out.print("<script type='application/javascript'>");
//                out.print("alert('"+e.getMessage()+"');");
//                out.print("history.go(-1);");
//                out.print("</script>");


//            } catch (IOException e1) {
//                e1.printStackTrace();
//            }
//            return null;
        }

        return "order_list";
    }



}

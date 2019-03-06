package com.tosit.cinema.web.font;


import com.tosit.cinema.entity.Times;
import com.tosit.cinema.service.TimesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.UnsupportedEncodingException;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Controller
@RequestMapping("/seats")
public class SeatsController {

    @Autowired
    private TimesService timesService;

    @RequestMapping("/selectSeats/{tId}/{cName}")
    public String selectSeats(@PathVariable("tId") Integer tId,@PathVariable("cName") String cName, ModelMap modelMap){

        Times times =timesService.findById(tId);

        try {
            cName = new String(cName.getBytes("iso-8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            System.out.println("转码错误！");
        }
        modelMap.put("times",times);
        modelMap.put("cName",cName);
        return "mypay_selectticket";
    }


}

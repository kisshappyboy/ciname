package com.tosit.cinema.web.font;

import com.tosit.cinema.entity.Cinema;
import com.tosit.cinema.entity.Times;
import com.tosit.cinema.service.CinemaService;
import com.tosit.cinema.service.TimesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Controller
@RequestMapping("/cinema")
public class CinemaController {
    @Autowired
    private CinemaService cinemaService;

    @Autowired
    private TimesService timesService;

    @RequestMapping("/showList/{mId}")
    public String showList(@PathVariable("mId") Integer mId, ModelMap modelMap){

        List<Cinema> cinemaList = cinemaService.findListByMid(mId);

        modelMap.put("cinemaList",cinemaList);
        modelMap.put("mId",mId);
        return "mypay_selectbefore";
    }


    @RequestMapping("/queryTimes/{mId}/{cId}")
    public @ResponseBody List<Times> queryTimes(@PathVariable("mId") Integer mId, @PathVariable Integer cId){
        List<Times> result = timesService.findTimesListByParas(mId,cId);
        return result;
    }
}

package com.tosit.cinema.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/9.
 */
@Controller
public class AdminIndexController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}

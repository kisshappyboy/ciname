package com.tosit.cinema.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/9.
 */
@Controller
public class AdminLoginController {

    @RequestMapping("/login")
    public String login(String userName, String passWord, HttpSession session){
        //假装数据库正确
        session.setAttribute("userName",userName);

        return "index";
    }

}

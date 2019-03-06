package com.tosit.cinema.web.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/9.
 */
public class AuthFilter implements Filter {


    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        //检测是否登陆
        String userName =(String)request.getSession().getAttribute("userName");
        //如果你在做登陆操作，也放行
        String uri = request.getRequestURI();
        if(uri.indexOf("login")!=-1){
            filterChain.doFilter(servletRequest,servletResponse);
            return ;
        }

        //登陆
        if(userName!=null){
            filterChain.doFilter(servletRequest,servletResponse);
        }
        //没有登陆
        else{
            request.getRequestDispatcher("/WEB-INF/admin/login.html").forward(servletRequest,servletResponse);
        }


    }

    public void destroy() {

    }
}

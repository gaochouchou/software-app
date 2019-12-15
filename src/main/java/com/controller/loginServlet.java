package com.controller;

import com.entity.Admin;
import com.entity.User;
import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    NoticeService noticeService= ServiceFactory.getNoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println("前端获取的密码是："+password);
        String url;
        Admin admin=noticeService.getAdmin(userName,password);
//        System.out.println("loginServlet用户名是："+admin.getUsername()
//                +"密码是："+admin.getPassword());
        if(admin==null){
            url="/login";
        }
        else{
            Admin admin1 = new Admin(admin.getName());
            System.out.println("封装admin1："+admin1.getName());
            req.getSession().setAttribute("admin", admin1);
            System.out.println("跳转manage:"+req.getSession().getAttribute("admin"));
            url="/manage";
        }
        resp.sendRedirect(url);
    }
}

package com.controller;

import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deletenotice")
public class deleteNoticeServlet extends HttpServlet {
    private NoticeService noticeService  = ServiceFactory.getNoticeService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        System.out.println("delete"+id);
        noticeService.deleteNotice(id);
        resp.sendRedirect("/manage");
    }
}

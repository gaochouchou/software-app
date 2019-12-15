package com.controller;

import com.entity.Notice;
import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/newnotice")
public class createNewNoticeServlet extends HttpServlet {
    private NoticeService noticeService  = ServiceFactory.getNoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/editnewnotice.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String head=req.getParameter("noticetitle");
        String author=req.getParameter("noticeauthor");
        String notify=req.getParameter("content");
//        System.out.println(head+author+notify);
        noticeService.addNotice(author, head, notify);
        resp.sendRedirect("/manage");
    }
}

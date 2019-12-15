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

@WebServlet("/editnotice")
public class editNoticeServlet extends HttpServlet {
    private NoticeService noticeService  = ServiceFactory.getNoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("notice", noticeService.getNotice(id));
        req.getRequestDispatcher("/WEB-INF/jsp/editnotice.jsp")
                .forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        String head=req.getParameter("noticetitle");
        String author=req.getParameter("noticeauthor");
        String notify=req.getParameter("content");
        Notice notice=new Notice(id,author,head,notify);
        noticeService.updateNotice(notice);
        resp.sendRedirect("/manage");

    }
}

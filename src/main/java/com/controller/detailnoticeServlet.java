package com.controller;

import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detailnotice")
public class detailnoticeServlet extends HttpServlet {
    private NoticeService noticeService  = ServiceFactory.getNoticeService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("notice", noticeService.getNotice(id));
        req.setAttribute("notices", noticeService.listNoticess());
        req.getRequestDispatcher("/WEB-INF/jsp/detailnotice.jsp")
                .forward(req, resp);
    }
}

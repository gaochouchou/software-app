package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import com.service.ServiceFactory;
import com.service.UserService;
import com.util.DatasourceTeacherUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private NoticeService noticeService  = ServiceFactory.getNoticeService();
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("teachers", DatasourceTeacherUtils.getTeachers());
        req.setAttribute("notices", noticeService.listNoticess());
        req.setAttribute("graduates", DatasourceTeacherUtils.getGraduates());
        req.setAttribute("news", newsService.listNews());

        req.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
                .forward(req, resp);
    }
}

package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editnews")
public class editNewsServlet extends HttpServlet {
    private NewsService newsService  = ServiceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("news", newsService.getNews(id));
        req.getRequestDispatcher("/WEB-INF/jsp/editnews.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        String head=req.getParameter("newstitle");
        String author=req.getParameter("newsauthor");
        String notify=req.getParameter("content");
        News news=new News(id, author, head, notify);
        newsService.updateNews(news);
        resp.sendRedirect("/manage");
    }
}

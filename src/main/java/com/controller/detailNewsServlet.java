package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detailnews")
public class detailNewsServlet extends HttpServlet {
    NewsService newsService= ServiceFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("wid"));
        req.setAttribute("news", newsService.getNews(id));
        req.setAttribute("newss", newsService.listNews());
        req.getRequestDispatcher("/WEB-INF/jsp/detailnews.jsp")
                .forward(req, resp);
    }
}

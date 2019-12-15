package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/introduction")
public class introductionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        if(id==1)
            req.getRequestDispatcher("/WEB-INF/jsp/introductionFront.jsp")
                    .forward(req, resp);
        if(id==2)
            req.getRequestDispatcher("/WEB-INF/jsp/introductionBehind.jsp")
                    .forward(req, resp);
        if(id==3)
            req.getRequestDispatcher("/WEB-INF/jsp/introductionMove.jsp")
                    .forward(req, resp);
    }
}

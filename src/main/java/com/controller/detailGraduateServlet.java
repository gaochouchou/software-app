package com.controller;

import com.util.DatasourceTeacherUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detailgraduate")
public class detailGraduateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("graduates", DatasourceTeacherUtils.getGraduates());
        req.setAttribute("graduate", DatasourceTeacherUtils.getGraduate(id));
        req.getRequestDispatcher("/WEB-INF/jsp/detailgraduate.jsp")
                .forward(req, resp);
    }
}

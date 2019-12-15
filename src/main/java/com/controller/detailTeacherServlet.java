package com.controller;

import com.entity.Teacher;
import com.util.DatasourceTeacherUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detailteacher")
public class detailTeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Teacher teacher= DatasourceTeacherUtils.getTeacher(id);
        req.setAttribute("teacher", teacher);
        req.getRequestDispatcher("/WEB-INF/jsp/detailTeacher.jsp")
                .forward(req, resp);
    }
}

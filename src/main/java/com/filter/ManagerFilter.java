package com.filter;

import com.entity.Admin;
import com.entity.User;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class ManagerFilter extends HttpFilter {
    private List<String> excludes = List.of("/login","/index","/detailnotice",
            "/laboratory","/introduction","/professionalintroduction",
            "/detailteacher","/listTeachers","/employment","/detailgraduate","/detailnews");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excludes) {
            if (e.equals(req.getServletPath())) {
                chain.doFilter(req, res);
                return;
            }
        }
        Admin admin = (Admin) req.getSession().getAttribute("admin");
        if (admin != null) {
            chain.doFilter(req, res);
        } else {
            res.sendRedirect("/login");
        }
    }
}

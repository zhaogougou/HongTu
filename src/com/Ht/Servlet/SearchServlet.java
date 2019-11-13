package com.Ht.Servlet;

import com.Ht.Dao.ArticleDao;
import com.Ht.Model.tm_info;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
/*
搜索
 */
public class SearchServlet extends HttpServlet {
    private ArticleDao AD=new ArticleDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        ArrayList<tm_info> list=AD.SearchDao(name);
        req.setAttribute("list",list);
        resp.sendRedirect("");
        //转到对应界面
    }
}

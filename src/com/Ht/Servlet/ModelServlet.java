package com.Ht.Servlet;

import com.Ht.Dao.ArticleDao;
import com.Ht.Model.tm_info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
/*
时代楷模显示title列表
 */
@WebServlet("/ModelServlet")
public class ModelServlet extends HttpServlet {
    private ArticleDao AD=new ArticleDao();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<tm_info> list = AD.SelAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("jsp/model.jsp").forward(req,resp);
    }
}

package com.Ht.Servlet;

import com.Ht.Dao.ArticleDao;
import com.Ht.Model.tm_info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*
news内容填充
 */
@WebServlet("/SelServlet")
public class SelServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArticleDao AD=new ArticleDao();
        tm_info tm=AD.SelDao(4);
        req.setAttribute("tm",tm);
        req.getRequestDispatcher("/jsp/news.jsp").forward(req,resp);
    }
}

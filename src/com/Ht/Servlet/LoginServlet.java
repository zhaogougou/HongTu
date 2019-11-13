package com.Ht.Servlet;

import com.Ht.Dao.UserDao;
import com.Ht.Model.user_info;
import com.mysql.cj.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

/*
用户登录
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private UserDao UD=new UserDao();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");
        String user=req.getParameter("user");
        String password = req.getParameter("password");
        ArrayList list=UD.LoginDao(new user_info(user,password));
        int i=Integer.parseInt(list.get(0).toString());
        if(i==1)
        {
            HttpSession session=req.getSession();
            session.setAttribute("user",list.get(1));
            //跳用户
           req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
        else if(i==2)
        {
            //跳管理员
            System.out.println("22222222222222222222222");
        }
        else
        {
            //弹窗检测
            resp.getWriter().print("<script language='javascript'>alert('用户名或密码错误')</script>");
            resp.setHeader("refresh", "1;URL=jsp/login.jsp");
        }
    }
}

package com.Ht.Servlet;

import com.Ht.Dao.UserDao;
import com.Ht.Model.user_info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*
注册跳转
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private UserDao UD=new UserDao();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user=req.getParameter("user");
        String password=req.getParameter("password");
        String tel=req.getParameter("tel");
        int i=UD.InsDao(new user_info(user,password,tel));
        if(i>0)
        {
            System.out.println("222222222222222222222");
        }
    }
}

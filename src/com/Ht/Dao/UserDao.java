package com.Ht.Dao;

import com.Ht.Model.user_info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Ht.util.JDBC;

public class UserDao {
    private Connection conn=null;
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    /*
       注册
     */
    public  int InsDao(user_info user) {
        int t=0;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("insert into user_info(user_name,user_pwd,user_phone) values (?,?,?);");
            ps.setString(1,user.getUser_name());
            ps.setString(2,user.getUser_pwd());
            ps.setString(3,user.getUser_phone());
            t=ps.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println("用户名已有");
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return t;
    }
    /*
        登录
     */
    public ArrayList LoginDao(user_info user)
    {
        ArrayList list=new ArrayList<>();
        int count=0;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from user_info where user_name=? and user_pwd = ?");
            ps.setString(1,user.getUser_name());
            ps.setString(2,user.getUser_pwd());
            rs=ps.executeQuery();
            if(rs.next())
            {
                if(rs.getInt("user_type")==1)
                {
                    count=1;
                }
                else
                {
                    count=2;
                }
            }
            list.add(count);
            list.add(new user_info(rs.getInt("user_id"),rs.getString("user_name")));
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return list;
    }
    /*
    删除
     */
    public  int DelDao(user_info user) {
        int t=0;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("delete from user_info where user_id = ?");
            ps.setInt(1,user.getUser_id());
            t=ps.executeUpdate();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return t;
    }
    /*
    查询单个
     */
    public user_info SelDao(user_info user)
    {
        user_info User =null;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from user_info where user_id=?");
            ps.setInt(1,user.getUser_id());
            rs=ps.executeQuery();
            if(rs.next()) {
                User = new user_info(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return User;
    }
    /*
    查询全部
     */
    public ArrayList<user_info> SelAllDao()
    {
        ArrayList<user_info> list=new ArrayList<>();
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from user_info");
            rs=ps.executeQuery();
            while(rs.next()) {
                list.add( new user_info(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6)));
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return list;
    }
    /*
    更新
     */
    public  int UpdateDao(user_info user) {
        int t=0;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("update user_info set user_name=?,user_pwd=?,user_phone=?,user_idcard=? where user_id = ?");
            ps.setString(1,user.getUser_name());
            ps.setString(2,user.getUser_pwd());
            ps.setString(3,user.getUser_phone());
            ps.setString(4,user.getUser_idcard());
            ps.setInt(5,user.getUser_id());
            t=ps.executeUpdate();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return t;
    }
    /*
    注册时查询是否有重名
     */
    public boolean RegisterDao(String name)
    {
        boolean t=false;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from user_info where user_name = ?");
            ps.setString(1,name);
            rs=ps.executeQuery();
            t=rs.next();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return t;
    }
    /*
    测试
     */
//    public String SelDao1(int id)
//    {
//        String name="";
//        try {
//            conn= JDBC.getCon();
//            ps = conn.prepareStatement("select * from db_ht where u_id=?");
//            ps.setInt(1,id);
//            rs=ps.executeQuery();
//            if(rs.next()) {
//                name=rs.getString("u_name");
//            }
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        finally {
//            JDBC.closeCon(conn,ps,rs);
//        }
//        return name;
//    }
//    public static void main(String[] args) {
//        UserDao UD=new UserDao();
//        //UD.InsDao(new UserModel("222","333","444"));
//        //boolean t=UD.LoginDao(new UserModel("1111","2222"));
//        //System.out.println(t);
//        //UD.DelDao(new UserModel(1));
//       // System.out.println(UD.SelDao1(1));
//        //System.out.println(UM.getUser_name());
////        ArrayList<UserModel> list=UD.SelAllDao();
////        System.out.println(list.get(1).getUser_name());
//        //UD.UpdateDao(new UserModel(2,"222","333","444","123456",1));
//    }
}

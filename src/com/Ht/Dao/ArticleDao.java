package com.Ht.Dao;

import com.Ht.Model.tm_info;
import com.Ht.util.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ArticleDao {
    private Connection conn=null;
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    /*
    搜索单个文章  条件id
     */
    public tm_info SelDao(int id)
    {
        tm_info tm=null;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from tm_info where tm_id = ?");
            ps.setInt(1,id);
            rs=ps.executeQuery();
            if(rs.next())
            {
                tm=new tm_info(rs.getInt(1),rs.getString(2),rs.getString(3)
                ,rs.getString(4),rs.getString(5));
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return tm;
    }
    /*
    检索功能实现   搜索关键字
     */
    public ArrayList<tm_info> SearchDao(String name)
    {
        ArrayList<tm_info> list=new ArrayList<>();
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from tm_info where tm_title like '%"+name+"%'");
            rs=ps.executeQuery();
            while(rs.next())
            {
                list.add(new tm_info(rs.getInt("tm_id"),rs.getString("tm_title")));
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
    显示全部内容
     */
    public ArrayList<tm_info> SelAll()
    {
        ArrayList<tm_info> list=new ArrayList<>();
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("select * from tm_info");
            rs=ps.executeQuery();
            while(rs.next())
            {
                list.add(new tm_info(rs.getInt("tm_id"),rs.getString("tm_title")));
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
    插入文章
     */
    public int InsArticleDao(String tm_article,String tm_date)
    {
        int i=0;
        try {
            conn= JDBC.getCon();
            ps = conn.prepareStatement("insert into tm_info(tm_article,tm_data) values (?,?);");
            ps.setString(1,tm_article);
            ps.setString(2,tm_date);
            ps.executeUpdate();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            JDBC.closeCon(conn,ps,rs);
        }
        return i;
    }

}

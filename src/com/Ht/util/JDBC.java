package com.Ht.util;

import java.sql.*;

public class JDBC {
        private static Connection conn=null;
        private static String driverClass ="com.mysql.cj.jdbc.Driver";
        private static String url ="jdbc:mysql://localhost:3306/db_ht?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf-8";
        private static String username ="root";
        private static String password ="stx123456";
    public static Connection getCon() {
        try {
            Class.forName(driverClass);
            try {
                conn = DriverManager.getConnection(url, username, password);
            } catch (SQLException e) {
                e.printStackTrace();
                //System.out.println("路径/用户名/密码 错误");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("加载驱动失败");
        }
        return conn;
    }

    //关闭数据库
    public static void closeCon(Connection con,PreparedStatement ps,ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("关闭失败");
            }
        }
    }
}

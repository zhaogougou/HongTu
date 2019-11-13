package com.Ht.Model;

public class user_info {
    int user_id;
    String user_name;
    String user_pwd;
    String user_phone;
    String user_idcard;
    int user_type;

    public user_info(int user_id) {
        this.user_id = user_id;
    }

    public user_info(String user_name, String user_pwd, String user_phone) {
        this.user_name = user_name;
        this.user_pwd = user_pwd;
        this.user_phone = user_phone;
    }

    public user_info(String user_name, String user_pwd) {
        this.user_name = user_name;
        this.user_pwd = user_pwd;
    }

    public user_info(int user_id, String user_name, String user_pwd, String user_phone, String user_idcard, int user_type) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_pwd = user_pwd;
        this.user_phone = user_phone;
        this.user_idcard = user_idcard;
        this.user_type = user_type;
    }

    public user_info(int user_id, String user_name) {
        this.user_id = user_id;
        this.user_name = user_name;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_idcard() {
        return user_idcard;
    }

    public void setUser_idcard(String user_idcard) {
        this.user_idcard = user_idcard;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }
}

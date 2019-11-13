package com.Ht.Model;

public class tm_info {
    private int tm_id;
    private String tm_title;
    private String tm_article;
    private String tm_pic;
    private String tm_data;

    public tm_info(int tm_id, String tm_title) {
        this.tm_id = tm_id;
        this.tm_title = tm_title;
    }

    public tm_info(int tm_id, String tm_title, String tm_article, String tm_pic, String tm_data) {
        this.tm_id = tm_id;
        this.tm_title = tm_title;
        this.tm_article = tm_article;
        this.tm_pic = tm_pic;
        this.tm_data = tm_data;
    }

    public String getTm_pic() {
        return tm_pic;
    }

    public void setTm_pic(String tm_pic) {
        this.tm_pic = tm_pic;
    }

    public int getTm_id() {
        return tm_id;
    }

    public void setTm_id(int tm_id) {
        this.tm_id = tm_id;
    }

    public String getTm_title() {
        return tm_title;
    }

    public void setTm_title(String tm_title) {
        this.tm_title = tm_title;
    }

    public String getTm_article() {
        return tm_article;
    }

    public void setTm_article(String tm_article) {
        this.tm_article = tm_article;
    }

    public String getTm_data() {
        return tm_data;
    }

    public void setTm_data(String tm_data) {
        this.tm_data = tm_data;
    }
}

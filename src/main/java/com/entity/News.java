package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String author;
    private String head;
    private String news;
    private Date sendTime;

    public News(int id, String author, String head, String news) {
        this.id = id;
        this.author = author;
        this.head = head;
        this.news = news;
    }

    public News(int id, String author, String head, String news, Date sendTime) {
        this.id = id;
        this.author = author;
        this.head = head;
        this.news = news;
        this.sendTime = sendTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }
}

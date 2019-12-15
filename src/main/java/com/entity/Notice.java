package com.entity;

import java.util.Date;

public class Notice {
    private int id;
    private String author;
    private String head;
    private String notify;
    private Date insertTime;

    public Notice(int id, String author, String head, String notify) {
        this.id = id;
        this.author = author;
        this.head = head;
        this.notify = notify;
    }

    public Notice(int id, String author, String head, String notify, Date insertTime) {
        this.id = id;
        this.author = author;
        this.head = head;
        this.notify = notify;
        this.insertTime = insertTime;
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

    public String getNotify() {
        return notify;
    }

    public void setNotify(String notify) {
        this.notify = notify;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
}

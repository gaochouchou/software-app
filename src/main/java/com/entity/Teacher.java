package com.entity;

public class Teacher {
    private int id;
    private String name;
    private String content;
    private Title title;
    private String img;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Title getTitle() {
        return title;
    }

    public void setTitle(Title title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Teacher(int id, String name, String content, Title title, String img) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.title = title;
        this.img = img;
    }
}

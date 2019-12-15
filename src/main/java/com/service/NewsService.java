package com.service;

import com.entity.Admin;
import com.entity.News;
import com.entity.Notice;

import java.util.List;

public interface NewsService {
    /**
     * 查询全部新闻
     * @return
     */
    public List<News> listNews();

    /**
     * 添加新新闻
     * @param author
     * @param head
     * @param news
     */
    public void addNews(String author, String head, String news);

    /**
     * 更新新闻
     * @param news
     */
    public void updateNews(News news);

    /**
     * 基于ID获取指定通知
     * @param id
     * @return
     */
    public News getNews(int id);


    /**
     * 基于id值删除数据库中对应通知
     * @param id
     */
    public void deleteNews(int id);
}

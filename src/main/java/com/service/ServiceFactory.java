package com.service;

import com.service.impl.NewsServiceImpl;
import com.service.impl.NoticeServiceImpl;

public class ServiceFactory {
    private static final NoticeService NOTICE_SERVICE=create();
    private static final NewsService NEWS_SERVICE=createNews();

    private static NoticeService create() {
        return new NoticeServiceImpl();
    }
    public static NoticeService getNoticeService() {
        return NOTICE_SERVICE;
    }

    public static NewsService createNews(){return  new NewsServiceImpl(); }
    public static NewsService getNewsService(){return NEWS_SERVICE;}
}

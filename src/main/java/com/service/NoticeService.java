package com.service;

import com.entity.Admin;
import com.entity.Notice;
import com.entity.User;

import java.util.List;

public interface NoticeService {
    /**
     * 查询全部通知
     * @return
     */
    public List<Notice> listNoticess();

    /**
     * 添加新通知
     * @param author
     * @param head
     * @param notify
     */
    public void addNotice(String author, String head, String notify);

    /**
     * 更新新通知
     * @param notice
     */
    public void updateNotice(Notice notice);

    /**
     * 基于ID获取指定通知
     * @param id
     * @return
     */
    public Notice getNotice(int id);

    /**
     * 基于用户名向数据库查找指定用户名的系统管理员
     * @param username
     * @return
     */
    public Admin getAdmin(String username,String password);

    /**
     * 基于id值删除数据库中对应通知
     * @param id
     */
    public void deleteNotice(int id);
}

package com.service.impl;

import com.entity.Admin;
import com.entity.Notice;
import com.entity.User;
import com.service.NoticeService;
import com.service.UserService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoticeServiceImpl implements NoticeService{
    @Override
    public void deleteNotice(int id) {
        System.out.println("数据库输出"+id);
        String sql="delete  from Notice where id=?";
        try(Connection connection=DataSourceUtils.getConnection();
        PreparedStatement st=connection.prepareStatement(sql);) {
            st.setInt(1,id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Notice> listNoticess() {
        List<Notice> notices=new ArrayList<>();
        String sql="SELECT * FROM Notice ORDER BY SENDTIME DESC";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement st= connection.prepareStatement(sql);
            ResultSet resultSet=st.executeQuery();
        ){
            while (resultSet.next()){
                Notice notice= new Notice(resultSet.getInt("id"),
                        resultSet.getString("author"),
                        resultSet.getString("head"),
                        resultSet.getString("notice"),
                        resultSet.getTimestamp("sendtime"));
                notices.add(notice);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return notices;
    }

    @Override
    public void addNotice(String author, String head, String notify) {
        String sql = "INSERT INTO NOTICE(author,head,notice) VALUES(?,?,?)";
        try(Connection connection=DataSourceUtils.getConnection();
        PreparedStatement st=connection.prepareStatement(sql)){
            st.setString(1, author);
            st.setString(2, head);
            st.setString(3, notify);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateNotice(Notice notice) {
        String sql = "UPDATE notice SET author=? ,head=? , notice=? WHERE id=?";
        try (Connection connection=DataSourceUtils.getConnection();
             PreparedStatement st=connection.prepareStatement(sql)){
//            System.out.println("数据库输出"+ notice.getAuthor()+notice.getHead()+notice.getNotify()+notice.getId());
            st.setString(1, notice.getAuthor());
            st.setString(2, notice.getHead());
            st.setString(3, notice.getNotify());
            st.setInt(4, notice.getId());
//            System.out.println(st);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Notice getNotice(int id) {
        Notice notice=null;
        String sql = "SELECT * FROM notice WHERE id=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement st=connection.prepareStatement(sql)){
            st.setInt(1, id);
            try(ResultSet rs=st.executeQuery()){
                while (rs.next()) {
                    notice = new Notice(rs.getInt("id"),
                            rs.getString("author"),
                            rs.getString("head"),
                            rs.getString("notice"),
                            rs.getTimestamp("sendtime"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return notice;
    }

    @Override
    public Admin getAdmin(String username,String password) {
        Admin admin=null;
        String sql="SELECT * FROM ADMIN WHERE username=? and password=?";
        try (Connection connection=DataSourceUtils.getConnection();
             PreparedStatement st=connection.prepareStatement(sql)
        ){
//            System.out.println("待查询用户名是"+username);
//            System.out.println("待查询密码是"+password);
            st.setString(1, username);
            st.setString(2, password);
            try (ResultSet rs=st.executeQuery()){
                while (rs.next()) {
//                    System.out.println("用户名是:"+username);
//                    System.out.println("密码是:"+rs.getString("password"));
//                +rs.getString("password")
                    admin=new Admin(username,
                            rs.getString("password"),
                            rs.getString("name"));

                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }
}

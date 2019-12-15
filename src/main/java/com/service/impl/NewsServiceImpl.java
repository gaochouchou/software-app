package com.service.impl;

import com.entity.News;
import com.entity.Notice;
import com.service.NewsService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsServiceImpl implements NewsService {
    @Override
    public List<News> listNews() {
        List<News> newss=new ArrayList<>();
        String sql="SELECT * FROM News ORDER BY SENDTIME DESC";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement st= connection.prepareStatement(sql);
            ResultSet resultSet=st.executeQuery();
        ){
            while (resultSet.next()){
                News news = new News(resultSet.getInt("id"),
                        resultSet.getString("author"),
                        resultSet.getString("head"),
                        resultSet.getString("news"),
                        resultSet.getTimestamp("sendtime"));
                newss.add(news);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newss;
    }

    @Override
    public void addNews(String author, String head, String news) {
        System.out.println("数据库"+head+author+news);
        String sql = "INSERT INTO NEWS(author,head,news) VALUES(?,?,?)";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement st=connection.prepareStatement(sql)){
            st.setString(1, author);
            st.setString(2, head);
            st.setString(3, news);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateNews(News news) {
        String sql = "UPDATE News SET author=? ,head=? , news=? WHERE id=?";
        try (Connection connection=DataSourceUtils.getConnection();
             PreparedStatement st=connection.prepareStatement(sql)){
//            System.out.println("数据库输出"+ notice.getAuthor()+notice.getHead()+notice.getNotify()+notice.getId());
            st.setString(1, news.getAuthor());
            st.setString(2, news.getHead());
            st.setString(3, news.getNews());
            st.setInt(4, news.getId());
//            System.out.println(st);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public News getNews(int id) {
        News news=null;
        String sql = "SELECT * FROM News WHERE id=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement st=connection.prepareStatement(sql)){
            st.setInt(1, id);
            try(ResultSet rs=st.executeQuery()){
                while (rs.next()) {
                    news = new News(rs.getInt("id"),
                            rs.getString("author"),
                            rs.getString("head"),
                            rs.getString("news"),
                            rs.getTimestamp("sendtime"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }

    @Override
    public void deleteNews(int id) {
        String sql="delete  from News where id=?";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement st=connection.prepareStatement(sql);) {
            st.setInt(1,id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}

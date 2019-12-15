<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2019/12/6
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理中心</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        main{
            padding: 0 50px;
        }
        .sidebar{
            padding: 100px 0;
        }
        .sidebar .nav h3{
            background: #3092cd;
            color: white;
            padding: 10px 20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            margin-top: 0;
            margin-bottom: 0;
        }
        .sidebar ul{
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.1);
        }
        .page-body .img{
            text-align: center;
        }
        .article img{
            weight:100px;
            height: 300px;
        }
        *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
        .footer{
            text-decoration: none;
        }
        .footer{
            width: 100%;
            height: 60px;
            background-color: black;
            text-align: center;
            color: white;
        }
        .footer p{
            padding: 10px;
        }
        .author{
            padding-top: 20px;
        }
        .content{
            width: 100%;
        }
        .div-content{
            padding-top: 20px;
        }
        .submit{
            width: 100px;
            height: auto;
            font-size: large;
        }
        .div-submit{
            text-align: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }

    </style>
</head>
<body>
<%@include file="/WEB-INF/jsp/common/headerAdmin.jsp"%>
<main>
    <form method="post" action="/newnews">
        <div class="article col-md-12">
            <div class="input-group input-group-lg edit-title">
                <span class="input-group-addon" id="sizing-addon-title" >标题：</span>
                <input type="text" class="form-control" placeholder="请输入文章标题" aria-describedby="sizing-addon1" name="newstitle">
            </div>
            <div class="input-group input-group-lg author">
                <span class="input-group-addon" id="sizing-addon-author" >作者：</span>
                <input type="text" class="form-control" placeholder="请输入文章作者" aria-describedby="sizing-addon1" name="newsauthor" value="${admin.name}">
            </div>
            <div class="div-content">
                <textarea class="content" rows="25" placeholder="请输入文章内容" name="content"></textarea>
            </div>
            <div class="div-submit">
                <button type="submit" class="btn btn-success submit">保存</button>
            </div>
        </div>
    </form>
</main>
<%@include file="/WEB-INF/jsp/common/footer.jsp"%>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>

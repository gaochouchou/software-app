<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2019/12/15
  Time: 0:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .page{
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
        .page-body p{
            text-indent: 2em;
        }
    </style>
</head>
<body>
<c:if test="${admin==null}">
    <%@include file="/WEB-INF/jsp/common/header.jsp"%>
</c:if>
<c:if test="${admin!=null}">
    <%@include file="/WEB-INF/jsp/common/headerAdmin.jsp"%>
</c:if>
<div class="page">
    <div class="sidebar col-md-3">
        <ul class="nav nav-pills nav-stacked">
            <h3>分类</h3>
            <c:set var="professor" value=""/>
            <c:set var="associateprofessor" value=""/>
            <c:set var="lecturer" value=""/>
            <c:if test="${teacher.title.id==1}">
                <c:set var="professor" value="active"/>
            </c:if>
            <c:if test="${teacher.title.id==2}">
                <c:set var="associateprofessor" value="active"/>
            </c:if>
            <c:if test="${teacher.title.id==3}">
                <c:set var="lecturer" value="active"/>
            </c:if>
            <li role="presentation" class="${professor}"><a href="/listTeachers?tids=1">教授</a></li>
            <li role="presentation" class="${associateprofessor}"><a href="/listTeachers?tids=2">副教授</a></li>
            <li role="presentation" class="${lecturer}"><a href="/listTeachers?tids=3">讲师</a></li>
        </ul>
    </div>
    <div class="article col-md-9">
        <div class="page-header">
            <h1>${teacher.name}  <br><small>职称：${teacher.title.name} </small></h1>
        </div>
        <div class="page-body">
            <div class="img">
                <img src="${teacher.img}"  class="center">
            </div>
            <p>${teacher.content}</p>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/footer.jsp"%>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</body>
</html>

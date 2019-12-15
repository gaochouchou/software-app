<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2019/12/15
  Time: 0:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师页面展示</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        main{
            padding: 0 50px;
        }
        .sidebar{
            padding: 50px 0;
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
        .notice{
            display: none;
        }
        .center p{
            text-align: center;
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
<div class="welcome">
    <div class="jumbotron">
        <div class="container">
            <h1>师资队伍</h1>
            <p>教师队伍采用专兼结合的用人机制 </p>
        </div>
    </div>
</div>

<main>
    <div class="sidebar col-md-3">
        <ul class="nav nav-pills nav-stacked">
            <h3>分类</h3>

            <c:set var="professor" value=""/>
            <c:set var="associateprofessor" value=""/>
            <c:set var="lecturer" value=""/>
            <c:if test="${titles==1}">
                <c:set var="professor" value="active"/>
            </c:if>
            <c:if test="${titles==2}">
                <c:set var="associateprofessor" value="active"/>
            </c:if>
            <c:if test="${titles==3}">
                <c:set var="lecturer" value="active"/>
            </c:if>
            <li role="presentation" class="${professor}"><a href="/listTeachers?tids=1">教授</a></li>
            <li role="presentation" class="${associateprofessor}"><a href="/listTeachers?tids=2">副教授</a></li>
            <li role="presentation" class="${lecturer}"><a href="/listTeachers?tids=3">讲师</a></li>

        </ul>
    </div>
    <div class="article col-md-9">
        <div class="row">
            <c:forEach items="${teachers}" var="t" varStatus="n">

                <div class="col-xs-6 col-md-3 center">
                    <a href="/detailteacher?id=${t.id}" class="thumbnail">
                        <img src="${t.img}" alt="${t.name}">
                    </a>
                    <p><b>${t.name}</b></p>
                </div>

            </c:forEach>
        </div>

    </div>
</main>


<%@include file="/WEB-INF/jsp/common/footer.jsp"%>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<script>
    $('#news a').click(function (e) {
        e.preventDefault()
        $(this).tab('show');
        $(".news").show();
        $(".notice").hide();
    })
    $('#notices a').click(function (e) {
        e.preventDefault()
        $(this).tab('show');
        $(".news").hide();
        $(".notice").show();
    })
</script>
</body>
</html>

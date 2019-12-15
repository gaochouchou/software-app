<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>后台管理系统</title>
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

    </style>
</head>
<body>
<%@include file="/WEB-INF/jsp/common/headerAdmin.jsp"%>
<div class="welcome">
    <div class="jumbotron">
        <div class="container">
            <h1>你好，${admin.name}老师</h1>
            <p>欢迎使用软件工程专业后台管理系统 </p>
        </div>
    </div>
</div>

<main>
    <div class="sidebar col-md-3">
        <ul class="nav nav-pills nav-stacked">
            <h3>快速新建</h3>
            <li role="presentation" ><a href="/newnews">创新新闻</a></li>
            <li role="presentation" ><a href="/newnotice">创建通知</a></li>
        </ul>
    </div>
    <div class="article col-md-9">
        <!--        <div class="page-header">-->
        <!--            <h1>通知标题    <small>发布日期：    作者： </small></h1>-->
        <!--        </div>-->
        <!--        <div class="page-body">-->
        <!--            <p>内容</p>-->
        <!--        </div>-->
        <ul class="nav nav-tabs">
            <li role="presentation" class="active" id="news"><a href="#">新闻中心</a></li>
            <li role="presentation" id="notices"><a href="#">通知公告</a></li>
        </ul>

        <div class="news">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">新闻中心</h3>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <c:forEach items="${newss}" var="n" varStatus="num">
                            <a href="/editnews?nid=${n.id}" class="list-group-item" >${n.head}
                                <c:if test="${num.count<=2}"><span class="label label-primary">New</span></c:if>
                                <div class="noticeTime"><small>发布日期：${n.sendTime} ${n.author}</small></div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <div class="notice">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">通知公告</h3>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <c:forEach items="${notices}" var="n" varStatus="num">
                                <a href="/editnotice?nid=${n.id}" class="list-group-item" >${n.head}
                                    <c:if test="${num.count<=2}"><span class="label label-primary">New</span></c:if>
                                    <div class="noticeTime"><small>发布日期：${n.insertTime} ${n.author}</small></div>
                                </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
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

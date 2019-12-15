<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${notice.head}</title>
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
            padding: 0 0 0 50px;
            text-indent: 2em;
        }
        .myhead{
            padding-left: 10px;
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
<main>
    <div class="page">
        <div class="sidebar col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <h3>优秀毕业生</h3>
                <c:forEach items="${graduates}" var="n">
                    <c:set var="active" value=""/>
                    <c:if test="${graduate.id==n.id}">
                        <c:set var="active" value="active"/>
                    </c:if>
                    <c:set var="s" value=""/>

                    <li role="presentation" class="${active}">
                        <a href="/detailgraduate?id=${n.id}">${n.name}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="article col-md-9">
            <div class="page-header myhead">
                <h1>${graduate.name}</h1>
            </div>
            <div class="page-body">
                <div class="img">
                    <img src="${graduate.img}"  class="center">
                </div>
                <p>${graduate.content}</p>
            </div>
        </div>
    </div>
</main>

<%--导入footer--%>
<%@include file="/WEB-INF/jsp/common/footer.jsp"%>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</body>
</html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>前端方向</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .page{
            padding: 0 200px;
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
            <h1>方向简介</h1>
            <p>前端方向</p>
        </div>
    </div>
</div>

<div class="page">
    <div class="article col-md-12">
        <div class="page-header">
            <h1>前端方向</h1>
        </div>
        <div class="page-body">
            <p>软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。</p>
        </div>
    </div>
</div>
<style>
    .whiteboard{
        height: 600px;
    }
</style>
<div class="whiteboard"></div>
<%@include file="/WEB-INF/jsp/common/footer.jsp"%>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</body>
</html>

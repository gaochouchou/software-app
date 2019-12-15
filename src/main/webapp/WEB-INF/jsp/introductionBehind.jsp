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
            <p>后端方向</p>
        </div>
    </div>
</div>

<div class="page">
    <div class="article col-md-12">
        <div class="page-header">
            <h1>后端方向</h1>
        </div>
        <div class="page-body">
            <p>教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。</p>
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

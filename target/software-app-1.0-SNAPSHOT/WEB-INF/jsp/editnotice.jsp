<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <form method="post" action="/editnotice">
        <div class="article col-md-12">
            <div class="input-group input-group-lg edit-title">

                <span class="input-group-addon" id="sizing-addon-title" >标题：</span>
                <input type="text" class="form-control" placeholder="请输入文章标题" aria-describedby="sizing-addon1" value="${notice.head}" name="noticetitle">
            </div>
            <div class="input-group input-group-lg author">
                <span class="input-group-addon" id="sizing-addon-author" >作者：</span>
                <input type="text" class="form-control" placeholder="请输入文章作者" aria-describedby="sizing-addon1" value="${notice.author}" name="noticeauthor">
            </div>
            <div class="div-content">
                <textarea class="content" rows="25" placeholder="请输入文章内容" name="content" >${notice.notify}</textarea>
            </div>
            <div class="div-submit">
                <input type="hidden" name="id" value="${notice.id}">
                <button type="submit" class="btn btn-success submit">保存</button>
                <button type="button" class="btn btn-danger submit" data-toggle="modal" data-target="#deleteModel">删除</button>
            </div>
        </div>
    </form>

<%--    模态框--%>
    <div class="modal fade" id="deleteModel" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">确认删除</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 warrning">此操作将删除本条记录,无法恢复!</div>
                    </div>
                </div>
                <div class="modal-footer">
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>--%>
                    <form method="post" action="/deletenotice">
                        <input type="hidden" name="id" value="${notice.id}">
                        <button type="submit" class="btn btn-primary" >确认删除</button>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</main>
<%@include file="/WEB-INF/jsp/common/footer.jsp"%>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>

<%@ page pageEncoding="UTF-8" %>
<style>
    .navbar{
        /*margin-bottom: 0px;*/
        /*border: 1px solid red;*/
        padding: 0 50px;
    }
    .navbar-header .navbar-brand{
        color: #dfdfdf;
    }
    .warrning{
        padding-top: 20px;
        padding-bottom: 20px;
    }
    #exit{
        text-decoration: none;
        color: white;
        display: block;
    }
</style>
<nav class="navbar navbar-inverse">
    <div class="container-fluid ">
        <div class="navbar-header">
            <a class="navbar-brand" href="/index">软件工程</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/professionalintroduction">专业介绍</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">方向简介
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/introduction?id=1">前端方向</a></li>
                        <li><a href="/introduction?id=2">后端方向</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/introduction?id=3">移动开发</a></li>
                    </ul>
                </li>
                <li><a href="/employment">就业指南</a></li>
                <li><a href="/listTeachers?tids=1">教师队伍</a></li>
                <li><a href="/laboratory">实验室</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false" id="welcomeTeacher">欢迎您，${admin.name}老师
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a href="#"  data-toggle="modal" data-target="#myModel">退出登录</a></li>
                    </ul>
                </li>
                <li><a href="/manage">管理系统</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="modal fade" id="myModel" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">确认退出</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 warrning">此操作将退出后台管理系统，并返回主页！</div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" formaction="/exit"><a href="/exit" id="exit">确认退出</a></button>
            </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
<script>
    $("#exit").click(function(){
        $.post('/manage',
            function(cdata) {
                console.log('ok', cdata)
            })
    })
</script>

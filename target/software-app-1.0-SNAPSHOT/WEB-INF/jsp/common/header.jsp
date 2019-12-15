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
</style>
<header>
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
                    <li><a href="/laboratory" target="_blank">实验室</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/login">管理员登陆</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>

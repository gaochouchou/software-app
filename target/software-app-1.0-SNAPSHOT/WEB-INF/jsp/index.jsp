<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>软件工程</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .jumbotron-self{
            padding: 0 50px;
            /*border: 1px solid red;*/
        }
        .carousel-inner .item img{
            width: 100%;
            height: 500px;
        }
        .carouselself{
            margin: 10px 50px;
        }
        .jumbotron-self h1{
            padding: 0 30px;
        }
        .jumbotron-self p{
            padding: 0 50px;
        }
        .jumbotron{
            background-image:url("../images/so.png");
            background-repeat: no-repeat;
            background-size:100%;
            /*margin-bottom:0px ;*/
        }
        .main{
            padding:0 40px;
        }
        /*.teachers{*/
        /*    padding:100px 0;*/
        /*    border: 1px solid red;*/
        /*}*/
        .teachers img,.graduates img{
            height: 100px;
        }

        .teachers h1{
            margin: 0;
            margin-bottom: 20px;
            font-size: 1.5em;
        }
        .teachers  a, .graduates a{
            margin-top: 10px;
            margin-bottom: 10px;
        }

        /*文本对齐图片*/
        .teachers .teacher,.graduates .graduate{
            text-align: center;
        }
        .graduates{
            display: none;
        }
        .panel{
            margin: 0;
        }
        .col-md-4{
            /*border: 1px solid red;*/
        }
        .notice{
            /*border: 1px solid red;*/
            padding:30px 0;
        }
        .card {
            width: 250px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
            margin-top: 20px;
            padding-right:0;
            padding-left:0;
            margin-left: 30px;
        }
        .card .header {
            background-color: #1494f4;
            color: white;
            padding: 10px;
        }
        .list-group{
            margin-bottom: 0;
        }
        .noticeTime{
            text-align: right;
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
    <div id="carousel-example-generic" class="carousel slide carouselself"
         data-ride="carousel" data-interval="5000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="/images/software-building.jpg" alt="软件工程">
                <div class="carousel-caption">
                    <h1>软件工程</h1>
                    <p>欢迎报考东北林业大学软件工程专业</p>
                </div>
            </div>
            <div class="item">
                <img src="/images/software-building1.jpg" alt="以IT业需求为导向">
                <div class="carousel-caption">
                    <h1>以IT业需求为导向</h1>
                    <p>软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。</p>
                </div>
            </div>
            <div class="item">
                <img src="../images/software-building2.jpg" alt="专兼结合">
                <div class="carousel-caption">
                    <h1>专兼结合</h1>
                    <p>教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历。</p>
                </div>
            </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="main">
        <!--新闻-->
        <div class="col-md-9 news">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">新闻中心</h3>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <c:forEach items="${news}" var="w" varStatus="num">
                            <c:if test="${num.count<=5}">
                                <a href="/detailnews?wid=${w.id}" class="list-group-item" >${w.head}
                                    <c:if test="${num.count<=2}"><span class="label label-primary">New</span></c:if>
                                    <div class="noticeTime"><small>发布日期：${w.sendTime} ${w.author}</small></div>
                                </a>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!--        通知公告-->
            <div class="notice">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">通知公告</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <c:forEach items="${notices}" var="n" varStatus="num">
                                <c:if test="${num.count<=5}">
                                    <a href="/detailnotice?nid=${n.id}" class="list-group-item" >${n.head}
                                        <c:if test="${num.count<=2}"><span class="label label-primary">New</span></c:if>
                                        <div class="noticeTime"><small>发布日期：${n.insertTime} ${n.author}</small></div>
                                    </a>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--教师、优秀毕业生-->
        <div class="row">
            <div class="col-xs-6 col-md-3 ">
                <!--            标签页-->
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active" id="teachers"><a href="#">教师团队</a></li>
                    <li role="presentation" id="graduates"><a href="#">优秀毕业生</a></li>
                </ul>
                <div class="teachers">
                    <!--                    <h1>教师团队</h1>-->
                    <c:forEach items="${teachers}" var="t" varStatus="n">
                        <div class="col-md-4 teacher">
                            <a href="/detailteacher?id=${t.id}" class="thumbnail">
                                <img src="${t.img}" alt="${t.name}">
                            </a>
                            <label>${t.name}</label>
                        </div>
                    </c:forEach>
                </div>

                <div class="graduates">

                    <c:forEach items="${graduates}" var="g" varStatus="n">
                        <div class="col-md-4 teacher">
                            <a href="/detailgraduate?id=${g.id}" class="thumbnail">
                                <img src="${g.img}" alt="${g.name}">
                            </a>
                            <label>${g.name}</label>
                        </div>
                    </c:forEach>

                </div>

                <div class="col-md-3 card ">
                    <div class="header">
                        <p><b>联系方式:</b>1234679789</p>
                        <p><b>地址：</b>黑龙江省哈尔滨市香坊区和兴路26号</p>
                        <p><b>邮箱：</b>icec@nefu.edu.cn</p>
                        <p><b>微博：</b>@东北林业大学信息学院</p>
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
    $('#teachers a').click(function (e) {
        e.preventDefault()
        $(this).tab('show');
        $(".teachers").show();
        $(".graduates").hide();
    })
    $('#graduates a').click(function (e) {
        e.preventDefault()
        $(this).tab('show');
        $(".teachers").hide();
        $(".graduates").show();
    })
</script>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2019/12/4
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>实验室</title>
    <!-- 引入的  初识化css   fullpage css -->
    <link rel="stylesheet" href="../../css/base.css" />
    <!-- 引入自己的css  -->
    <link rel="stylesheet" href="../../css/mypage.css" />
    <link rel="stylesheet" href="../../css/jquery.fullPage.css" />
    <!-- y这是一个jquery插件，所以先引入jquery -->
    <script src="../../js/jquery.min.js"></script>
    <!-- 如果想要 easing 缓动动画  那就引入 easing js -->
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/jquery.fullPage.min.js"></script>
    <!-- 引入自己的js -->
    <script src="../../js/myPage.js"></script>
</head>
<body>

<div id="fullpage">
    <!-- 第一屏幕 -->
    <div class="section section1">
        <img src="images/923-2.png" class="fly updown" alt="">
        <img src="images/923.png" class="shirt01 shirt-updown" alt="">
        <img src="images/923-1.png" class="goods" alt="">
    </div>
    <!-- 第二屏幕 -->
    <div class="section section2">
        <div class="computer">
            <div class="search move">
                <img src="images/search-words.png" class="search-wrods" alt="">
            </div>
            <img src="images/search-02-1.png"  class="search-02-1" alt="">
            <img src="images/goods-441-218.png"  class="goods-02" alt="">
        </div>
    </div>

    <!-- 第三屏幕 -->
    <div class="section section9">
        <a href="#" class="beginAgain">
            <img src="images/btn-08.png" alt="" class="">
        </a>
        <img src="images/hand-08.png"  class="hand-08">
    </div>

</div>

</body>
</html>

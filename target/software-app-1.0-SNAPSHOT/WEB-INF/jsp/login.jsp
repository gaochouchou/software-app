<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2019/12/5
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>登陆</title>
    <meta charset="utf-8">
<%--    <link href="../../styles/style.css" rel='stylesheet' type='text/css' />--%>
    <link href="/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
</head>
<body>
<!-----start-main---->
<div class="main" >
    <div class="login-form">
        <h1>Member Login</h1>
        <div class="head">
            <img src="/images/user.png" alt=""/>
        </div>
        <form action="/login" method="post">
            <input name="username" type="text" class="text" value="USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
            <input  name="password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
            <div class="submit" style="width: 290.7px">
                <input type="submit" onclick="myFunction()" value="LOGIN" >
            </div>
            <!--					<p><a href="#">Forgot Password ?</a></p>-->
        </form>
    </div>
    <!--//End-login-form-->

</div>
<!-----//end-main---->

<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'>
</script>
</body>
</html>

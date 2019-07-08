<%--
  Created by IntelliJ IDEA.
  User: T
  Date: 2019/7/8
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="/css/register.css">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="icon" href="/img/favicon.ico" type="image/x-icon">
</head>
<body>
<header>
    <div class="header-content">
        <a href="/goods/list" class="logo"></a>
        <span>${username}欢迎登录秒杀商城</span>
        <div class="login"><i></i><a href="#">登录页面，调查问卷</a> </div>
    </div>
</header>
<main>
    <section>
        <div class="login-content">
            <div class="login-content-top">

                <a href="#" align="center">账户登录</a>
            </div>
            <div class="login-content-notice">
                <i></i>
                <span>公共场所不建议自动登录，以防账号丢失</span>
            </div>
            <form action="/user/check">
                <div class="form-item">
                    <label for="userlog" ></label>
                    <input type="text" id="userName" name="userName" placeholder="邮箱/用户名/已验证手机">
                </div>
                <div class="form-item">
                    <label for="userlog1" ></label>
                    <input type="text" id="userPwd" name="userPwd" placeholder="密码    ">
                </div>
                <div class="form-check">
                    <input type="checkbox" id="checkbox"><label for="checkbox">自动登录</label>
                    <a href="#">忘记密码</a>
                </div>
                <input type="submit" value="登 录">
            </form>
            <div class="login-content-bottom">
                <a href="/user/regist">立即注册</a>
            </div>
        </div>
    </section>
</main>
</body>
</html>

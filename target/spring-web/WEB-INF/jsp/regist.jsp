<%--
  Created by IntelliJ IDEA.
  User: T
  Date: 2019/7/8
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/register.css">
    <link rel="icon" href="/image/favicon.ico" type="image/x-icon">
</head>
<body>
<header>
    <div class="header-content">
        <a href="/goods/list" class="logo"></a>
        <span>欢迎注册</span>
        <div class="login">已有账号？<a href="/user/login"> 请登录</a> </div>
    </div>
</header>
<main>
    <a class="question"></a>
    <section>
        <div class="main-content-L">
            <form action="/user/putRegist" method="post">
                <div class="form-list">
                    <label for="userName">用 户 名</label>
                    <input type="text" id="userName" name="userName"  placeholder="您的账户名和登录名">
                </div>
                <div class="form-validate">
                    <span></span>
                </div>

                <div class="form-list">
                    <label for="userPwd">设置密码</label>
                    <input type="password" id="userPwd" name="userPwd" placeholder="建议至少使用两种字符组合">
                </div>
                <div class="form-validate">
                    <span></span>
                </div>

                <div class="form-list">
                    <label for="ReuserPwd">确认密码</label>
                    <input type="password" id="ReuserPwd" name="ReuserPwd" placeholder="请再次输入密码">
                </div>
                <div class="form-validate">
                    <span></span>
                </div>

                <%--<div class="form-list">
                    <label for="telphone" id="country">中国 +86 <a href=""></a></label>
                    <input type="tel" id="telphone" placeholder="建议使用常用手机">
                </div>
                <div class="form-validate">
                    <span></span>
                    <a href="#">邮箱验证</a>
                </div>
                <div class="form-list">
                    <label for="identifycode">验 证 码</label>
                    <input type="text" id="identifycode" placeholder="请输入验证码">
                    <img src="image/image2.jpg" alt="">
                </div>
                <div class="form-validate">
                    <span></span>
                </div>

                <div class="form-list">
                    <label for="telIdentify" id="telId">手机验证码</label>
                    <input type="text" id="telIdentify" placeholder="请输入手机验证码">
                    <div>获取验证码</div>
                </div>
                <div class="form-validate">
                    <span></span>
                </div>
                <div class="form-check">
                    <input type="checkbox">
                    我已阅读并同意 <a href="#">《京东用户注册协议》</a>
                </div>
                <div class="form-validate">
                    <span></span>
                </div>--%>
                <input type="submit" class="form-submit" value="立即注册">

            </form>
        </div>
        <div class="main-content-R">
            <div class="companyReg">
                <a href="#">
                    <i></i>
                    <span>企业用户注册</span>
                </a>
            </div>
            <div class="globalReg">
                <a href="#">
                    <i></i>
                    <span>INTERNATIONAL CUSTOMERS</span>
                </a>
            </div>
            <div class="phoneReg"></div>

        </div>
        <div class="clearfix"></div>
    </section>
</main>
<footer>
    <p>
        <a href="">关于我们</a><span></span>
        <a href="">联系我们</a><span></span>
        <a href="">人才招聘</a><span></span>
        <a href="">商家入驻</a><span></span>
        <a href="">广告服务</a><span></span>
        <a href="">友情链接</a><span></span>
        <a href="">销售联盟</a><span></span>
        <a href="">English Site</a><span></span>
        <a href="">关于我们</a><span></span>
        <a href="">关于我们</a>
    </p>
    <p>Copyright©2004-2016  秒杀商城 版权所有 </p>
</footer>
</body>
</html>

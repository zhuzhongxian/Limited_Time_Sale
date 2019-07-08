<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 引入jstl -->
<%@include file="common/tag.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>秒杀列表页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<!-- 页面显示部分 -->
<div class="container">
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-6">
            <img src="/img/logo.jpg" style="height: 70px;">
        </div>
        <div class="col-lg-6 col-md-4 hidden-xs col-sm-6">
            <h1></h1>
        </div>
        <div class="col-lg-2 col-md-4" style="padding-top: 15px">
            <a href="/user/login">登陆</a>
            <a href="/user/regist">注册</a>
            <a href="/user/${sessionScope.USER_SESSION.userId}/cart">${sessionScope.USER_SESSION.userName}购物车</a>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 10px">
    <nav class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">首页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">手机数码</a></li>
                <li><a href="#">家用电器</a></li>
                <li><a href="#">鞋靴箱包</a></li>
                <li><a href="#">孕婴保健</a></li>
                <!-- <li><a href="#">傻逼</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">所有分类 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">手机数码</a></li>
                        <li><a href="#">家用电器</a></li>
                        <li><a href="#">鞋靴箱包</a></li>
                        <li class="divider"></li>
                        <li><a href="#">S孕婴保健</a></li>
                        <li class="divider"></li>
                        <li><a href="#">傻逼</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>
<div class="container">
    <div id="carousel-example-generic" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="/img/1.jpg" alt="..."  style="height: auto;width: 1200px; margin: 0 auto;">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="/img/4.jpg" alt="..." style="height: 662.017px;width: 1200px; margin: 0 auto;">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="/img/3.jpg" alt="..." style="height: auto;width: 1200px; margin: 0 auto;">
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>

<div class="container">
    <div class="row">
        <span id="" style="font-size: 30px;padding-left:33px;">
            秒杀商品   
        </span>
    </div>
    <div class="row">
        <div class="col-md-2 col-sm-2 hidden-xs hidden-sm" style="height: 300px;">
            <img src="/img/long.jpg" height="100% ">
        </div>
        <div class="col-md-10 col-sm-10" style="padding-left: 70px;">
            <div class="row">


                <c:forEach var="list" items="${list}">
                <div class="col-md-2 col-sm-4 col-xs-6" align="center" style="width: auto; margin:-5px">
                    <a href="/goods/${list.goodsId}/detail" target="_blank"><img src="/img/${list.goodsImgUrl}" style="height: 280px;width: 280px;"></a>
                    <a href="/goods/${list.goodsId}/detail" target="_blank"><p style="height: auto;width: 200px; margin: 10px 10px 0px 10px;"><font color="gray">${list.goodsName}</p></a>
                    <p style="height: auto;width: 200px; margin: 10px 10px 0px 10px;"><font color="red">￥${list.goodsPrice}</font></p>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<div class="container" style="margin-top:10px;">
    <div class="row">
        <div class="hidden-md hidden-sm hidden-xs" style="padding-left: 14px;">
            <img src="/img/food.jpg" style="width: 100%">
        </div>
    </div>
</div>

<div class="container" style="margin-top: 10px;">
    <div class="row">
        <div style="text-align: center;margin-top: 5px;margin-bottom: 20px;">
            CopyRight 0000-9999 秒杀商城 版权所有
        </div>
    </div>
</div>


</body>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
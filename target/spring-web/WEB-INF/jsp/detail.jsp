<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp" %>
</head>
<body>

<div class="container">
    <div class="panel panel-default text-center">
        <div class="pannel-heading">
            <h1>${goods.goodsName}</h1>
        </div>
        <div class="panel-body">
            <h2 class="text-danger">
                <!-- 显示time图标 -->
                <span class="glyphicon glyphicon-time"></span>
                <a href="/goods/${goods.goodsId}/${sessionScope.USER_SESSION.userId}/execute"><button class="btn btn-primary btn-lg" id="killBtn" style="margin: 0px 0px 0px 0px;align-content: center; ">开始秒杀</button></a>
                <!-- 展示倒计时 -->
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>

        <div class="content" style="margin: 0px 0px 0px 0px;">
            <div class="big">
                <!-- 放大镜 -->
                <div class="big-img">
                    <img src="/img/${goods.goodsImgUrl}">
                    <div class="shade"></div>
                </div>

            </div>

            <div class="info">
                <h1>${goods.goodsTitle}</h1>
                <div class="shuxing">
                    <span class="dt">秒 杀 价:</span>
                    <div class="price">
                        <!-- ￥928.00 -->
                        <p>￥</p>
                        <p id="p">${goods.goodsPrice}</p>
                    </div>
                    <div class="jiangjia"></div><br>
                    <div class="aaaaa">
                        <span class="dt"></span>

                        <div class="sjprice"></div>


                        <ul>

                        </ul>

                    </div>
                </div>
                <div id="shuxing1">

                </div>
            </div>

        </div>

    </div>
</div>


<%--<div class="container">
    <div class="panel panel-default text-center">
        <div class="pannel-heading">
            <h1>${goods.goodsName}</h1>
        </div>
        <div class="panel-body">
            <h2 class="text-danger">
                <!-- 显示time图标 -->
                <span class="glyphicon glyphicon-time"></span>
                <button class="btn btn-primary btn-lg" id="killBtn" style="margin: 0px 50px 0px 0px ">开始秒杀</button>
                <!-- 展示倒计时 -->
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>
    </div>
</div>--%>
<!-- 登录弹出层，输入电话 -->
<%--<div id="killPhoneModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"></span>秒杀:
                </h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="填手机号^o^" class="form-control"/>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <!-- 验证信息 -->
                <span id="killPhoneMessage" class="glyphicon"></span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>--%>
</body>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 使用CDN 获取公共js http://www.bootcdn.cn/ -->
<!-- jQuery cookie操作插件 -->
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<!-- jQuery countDown倒计时插件 -->
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>
<!-- 开始编写交互逻辑 -->
<script src="/js/seckill.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        //使用EL表达式传入参数
        seckill.detail.init({
            goodsId : ${goods.goodsId},
            startTime : ${goods.startTime.time},//毫秒
            endTime : ${goods.endTime.time}
        });
    });
</script>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: T
  Date: 2019/7/8
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>秒杀购物车</title>
    <link rel="shortcut icon" href="/img/tit_ico.ico"/>
    <link rel="stylesheet" type="text/css" href="/css/shoping.css">

    <style>
        *{margin:0;padding:0;color:#666;font-size:12px;}
        ul,ol{list-style:none;}
        a{text-decoration:none;color:#000;}
        .cen{margin: 0 auto;}
        /*.fr{float:right;}*/
        .fl{float:left;}
        .dlbj{width:100%;height:104px;}
        .dlbj .dlts{width:948px;height:25px;padding:10px 20px;border:1px solid green;background:#FFFDEE;}
        .dlbj .dlts .text{width:948px;height:25px;}
        .dlbj .dlts .text .jg{width:16px;height:16px;background:url('images/dlts/1.png') no-repeat 1px 1px ;margin-left:-362px;}
        .dlbj .dlts .text .ms{width:345px;height:23px;font-size:13px;line-height:23px;text-align:center;margin-left:-342px;color:orange;}
        .dlbj .dlts .text .bt{width:68px;height:25px;font-size:12px;line-height:25px;text-align:center;background:red;margin-left:5px;border-radius:10%;color:#FFF;cursor:pointer;}
        .dlbj .yf{width:990px;height:26px;margin-top:13px;}
        .dlbj .yf .yf1{width:80px;height:26px;text-align:center;line-height:26px;float:left;margin-right:20px;}
        .dlbj .yf .yf2{width:82px;height:26px;text-align:center;line-height:26px;float:left;}
        .dlbj .yf .yf1 a{font-size:16px;color:red;}
        .dlbj .yf .yf2 a{font-size:16px;}

        .dlbj .yf .sd{width:201px;height:26px;float:left;margin-left:607px; }
        .dlbj .yf .sd .ps{width:48px;height:26px;text-align:left;line-height:25px;float:left;}
        .dlbj .yf .sd .mine-area{width:150px;height:24px;float:left;border:1px solid #666; overflow: hidden;}
        .dlbj .yf .sd .mine-area input{width:150px;height:24px;border:none;}


    </style>
</head>
<body>
<!-- 头部 -->



<div class="caozuo cen">
    <div class="left fl">
        <div class="logo"><img src="/img/miaosha.png"></div>
    </div>
    <div class="midder fl">
        <div class="sousuo">
            <input type="text" value="自营">
            <button>搜索</button>
        </div>
    </div>
</div>
<!-- 登录提示 -->
<div class="dlbj">
    <div class="dlts cen">
        <div class="text">
            <div class="jg fl"></div>
            <div class="ms fl">您还没有登录！登录后购物车的商品将保存到您账号中</div>
            <div class="bt fl">立即登录</div>
        </div>
    </div>
    <div class="yf cen">
        <div class="yf1 fl"><a href="">全部商品</a></div

    </div>
</div>
<!-- 全部商品 -->
<div class="midbj">
    <div class="mid cen">
        <div class="mid1">
            <div class="a1 fl">
                <div class="input fl">
                    <input id="kz" type="checkbox"  name="love[]">
                </div>
                <div class="qx fl">全选</div>
            </div>
            <div class="a2 fl">商品</div>
        </div>
        <div class="zybj">
            <div class="zy cen">
                <div class="input fl ">
                    <input type="checkbox"  name="love[]">
                </div>
                <div class="zyan fl">秒杀商城</div>

            </div>
        </div>

        <c:forEach var="seckilled" items="${user.seckilled}">
        <div class="zytbj">
            <div class="zyt cen">
                <div class="input1 fl">
                    <input type="checkbox" name="love[]" id="in">
                </div>
                <div class="zyti fl">
                    <ul>
                        <li class="a fl"><a href="/goods/${seckilled.goods.goodsId}/detail"><img src="/img/${seckilled.goods.goodsImgUrl}" alt="" style="height: 80px; width: auto"></a></li>
                        <li class="b fl"><a href="">${seckilled.goods.goodsTitle}</a></li>
                        <%--<li class="c fl"></li>
                        <li class="d fl "><a href="">增值保障</a></li>--%>
                    </ul>
                </div>
                <div class="zytm fl">
                    <div class="on">${seckilled.goods.goodsName}</div>
                </div>
                <div class="zytn fl">
                    <div class="fi">${seckilled.goods.goodsPrice}</div>
                    <div class="tw">
                        <div class="t1 fl">

                            <c:choose>
                                <c:when test="${seckilled.state == '-1'}">
                                    订单无效
                                </c:when>
                                <c:when test="${seckilled.state == '0'}">
                                    下单成功
                                </c:when>
                                <c:when test="${seckilled.state == '1'}">
                                    已付款
                                </c:when>
                                <c:otherwise>
                                    已发货
                                </c:otherwise>
                            </c:choose>

                        </div>
                        <!-- <div class="t2 fl">＞</div> -->
                    </div>
                </div>
                <div class="zyto fl">
                    <div class="z1 fl">-</div>
                    <input type="text" value="1" class="z2 fl">
                    <div class="z3 fl">+</div>
                    <div class="z4 ">有货</div>
                </div>
                <div class="zytp fl">
                    <input type="text" value="${seckilled.goods.goodsPrice}" id="danji">
                </div>
                <div class="zytq fl">
                    <div class="z5">删除</div>
                    <div class="z6" style="width: 100px;height: auto">${seckilled.createTime}</div>
                </div>
            </div>
        </div>
        </c:forEach>


    </div>
</div>


<div class="jsbj">
    <div class="js cen">
        <div class="js1 fl">
            <%--<input type="checkbox"  name="love[]" id="zk">--%>
            <%--<div class="js1_1 fl">全选</div>--%>
        </div>
        <%--<div class="js2 fl"><a href="">删除选中的商品</a></div>
        <div class="js3 fl"><a href="">移到我的关注</a></div>
        <div class="js4 fl"><a href="">清除下柜商品</a></div>--%>
        <div class="js5 fl">
            <div class="js6 fl">
                <div class="sj1 fl">已有选择的商品</div>
                <div class="sj2 fl">></div>
            </div>
            <div class="sjb">
                <div class="sjb1">普通商品1件</div>
                <div class="sjb2">
                    <div class="sjb3 fl"></div>
                    <div class="sjb4 fl"><img src="/img/font/1.jpg" alt=""></div>
                    <div class="sjb5 fl"></div>
                </div>

            </div>

            <%--<div class="js7 fl">
                <div class="y1">
                    <div class="y3 fl">总价:</div>
                    <div class="y4 fl">
                        <input type="text" value="3358" love="[]" id="zong">
                    </div>
                </div>
                <div class="y2">
                    <div class="y5 fl">已节省：</div>
                    <div class="y6 fl">￥0.00</div>
                </div>
            </div>--%>
            <div class="js8 fl">去结算</div>
        </div>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: T
  Date: 2019/7/9
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情页</title>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="/img/tit_ico.ico"/>
    <link rel="stylesheet" href="/css/xq.css">
    <link rel="stylesheet" href="/css/reset.css">
    <style>

        /*自定义样式 */
        *{margin:0px;padding:0px;}
        .margin{margin:0px auto;}
        .ml10{margin-left:10px;}
        a{text-decoration: none;}
        a{color:#666;}
        a:hover{color:red;}
        .bg3{background:#f1f1f1;}
        .font1{font-size:12px;font-family:'宋体';/*text-align:center;*/}
        .font2{font-size:8px;}
        .font3{font-size:16px; }
        ul,ol{list-style:none;}
        .fl{float:left;}

    </style>
</head>
<body>
<div class="header bg3">
</div>
<div class="banner margin">
    <div class="logo"><img src="/img/miaosha.png"></div>
</div>
<!-- 栏目 -->
<div class="lanmu">
    <div class="one">
        <span class="wenzi"><a href="">全部商品分类</a></span>
        <span class="fuhao">∧</span>

        <div class="hidden">
            <ol>
                <li onmouseover="Appear()" onmouseout="Appear1()"><a href="">&nbsp;家用电器</a></li>
                <li><a href="">&nbsp;手机</a><a href="">数码</a><a href="">京东通信</a></li>
                <li><a href="">&nbsp;电脑</a><a href="">办公</a></li>
                <li><a href="">&nbsp;家居</a><a href="">家具</a><a href="">家装</a><a href="">     厨具</a></li>

                <li><a href="">&nbsp;男装</a><a href="">女装</a><a href="">童装</a><a href="">    内衣</a></li>

                <li><a href="">&nbsp;个护化妆</a><a href="">清洁用品</a><a href="">宠物</a></li>
                <li><a href="">&nbsp;鞋靴</a><a href="">箱包</a><a href="">珠宝</a><a href="">    奢侈品</a></li>

                <li><a href="">&nbsp;运动户外</a><a href="">钟表</a></li>
                <li><a href="">&nbsp;汽车</a><a href="">汽车用品</a></li>
                <li><a href="">&nbsp;母婴</a><a href="">玩具乐器</a></li>
                <li><a href="">&nbsp;食品</a><a href="">酒类</a><a href="">生鲜</a><a href="">     特产</a></li>

                <li><a href="">&nbsp;医药保健</a></li>
                <li><a href="">&nbsp;图书</a><a href="">音像</a><a href="">电子书</a></li>
                <li><a href="">&nbsp;彩票</a><a href="">旅行</a><a href="">充值</a><a href="">     票务</a></li>

                <li><a href="">理财</a><a href="">众筹</a><a href="">白条</a><a href="">     保险</a></li>
            </ol>

            <div id="no-see1" class="right" onmouseover="Appear2()" onmouseout="Appear1()">
                <div class="right-a">
                    <ul>
                        <li>
                            <div class="span"><a href="">家电城</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>
                            <div class="span"><a href="">品牌日</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>
                            <div class="span"><a href="">智能生活馆</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>
                            <div class="span"><a href="">京东净化馆</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>
                            <div class="span"><a href="">京东帮馆服务店</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>
                            <div class="span"><a href="">家电众筹馆</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>

                    </ul>
                </div>
                <div class="right-b">
                    <ul>
                        <li>
                            <div class="span"><a href="">电视</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>|<a href=""> 合资品牌</a></li>
                        <li>|<a href=""> 国产品牌</a></li>
                        <li>|<a href=""> 互联网品牌</a></li>
                    </ul>
                </div>
                <div class="right-c">
                    <ul>
                        <li>
                            <div class="span"><a href="">空调</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>|<a href=""> 壁挂式空调</a></li>
                        <li>|<a href=""> 柜式空调</a></li>
                        <li>|<a href=""> 中央空调</a></li>
                        <li>|<a href=""> 空调配件</a></li>

                    </ul>
                </div>
                <div class="right-d">
                    <ul>
                        <li>
                            <div class="span"><a href="">洗衣机</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>|<a href=""> 滚筒洗衣机</a></li>
                        <li>|<a href=""> 洗烘一体机</a></li>
                        <li>|<a href=""> 波轮洗衣机</a></li>
                        <li>|<a href=""> 迷你洗衣机</a></li>
                        <li>|<a href=""> 洗衣机配件</a></li>

                    </ul>
                </div>
                <div class="right-e">
                    <ul>
                        <li>
                            <div class="span"><a href="">冰箱</a></div>
                            <div class="p"><a href=""> > </a></div>
                        </li>
                        <li>|<a href=""> 多门</a></li>
                        <li>|<a href=""> 对开门</a></li>
                        <li>|<a href=""> 三门</a></li>
                        <li>|<a href="">  双门</a></li>
                        <li>|<a href="">  冷柜/冰吧</a></li>
                        <li>|<a href="">  酒柜</a></li>
                        <li>|<a href="">  冰箱配件</a></li>

                    </ul>
                </div>
                <div class="right-f"></div>
                <div class="right-g"></div>
                <div class="right-h"></div>
                <div class="right-i"></div>
                <div class="right-j"></div>

                <div class="right-img">
                    <div class="img-1"><img src="images/right-img/1.jpg"></div>
                    <div class="img-2"><img src="images/right-img/2.jpg"></div>
                    <div class="img-3"><img src="images/right-img/3.jpg"></div>
                    <div class="img-4"><img src="images/right-img/4.jpg"></div>
                    <div class="img-5"><img src="images/right-img/5.jpg"></div>
                    <div class="img-6"><img src="images/right-img/6.jpg"></div>
                    <div class="img-7"><img src="images/right-img/7.jpg"></div>
                    <div class="img-8"><img src="images/right-img/8.jpg"></div>
                    <div class="img-9"><img src="images/right-img/9.jpg"></div>
                    <div class="img-10"><img src="images/right-img/10.jpg"></div>



                </div>

            </div>
        </div>
    </div>
    <script type="text/javascript">

        function Appear(){
            var seeObj=document.getElementById('no-see1')
            seeObj.style.display="block";

        }
        function Appear1(){
            var seeObj=document.getElementById('no-see1')
            seeObj.style.display="none";

        }
        function Appear2(){
            var seeObj=document.getElementById('no-see1')
            seeObj.style.display="block";

        }
    </script>
    <ul>
        <li><a href="">首页</a></li>
        <li><a href="">服装城</a></li>
        <li><a href="">美妆馆</a></li>
        <li><a href="">秒杀超市</a></li>
        <li><a href="">生鲜</a></li>
        <li><a href="">全球购</a></li>
        <li><a href="">闪购</a></li>
        <li><a href="">团购</a></li>
        <li><a href="">拍卖</a></li>
        <li><a href="">金融</a></li>
        <li><a href="shop.html">购物车</a></li>
    </ul>
</div>
<div class="hr"></div>
<div class="title">
    <div class="t1"><a href=""> </a></div>
    <div class="T">  </div>
    <div class="t2">
        <div class="wenzi"><a href=""></a></div>
    </div>
    <div class="T"></div>
    <div class="t3">
        <div class="wenzi"><a href="pc.html"></a></div>
    </div>
    <div class="T"> </div>
    <div class="t4">
        <div class="wenzi"><a href="pc.html"></a></div>
    </div>
    <div class="T"> </div>
    <!-- <div class="t5">
        <div class="wenzi"><a href="pc.html">AppleMMGL2CH/A</a></div>
    </div>
    <div class="T"> > </div> -->
    <!-- 详情页 -->
    <div class="content" style="margin: 0px 0px 0px 270px;">
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

</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/xq.js" ></script>
<!-- <script src="js/jquery-1.11.3.min.js"></script> -->
<script src="/js/Popt.js"></script>
<script src="/js/cityJson.js"></script>
<script src="/js/citySet.js"></script>

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

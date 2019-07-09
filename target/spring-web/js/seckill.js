// 存放主要交互逻辑js代码
// javascript 模块化
var seckill ={
    //封装秒杀相关ajax的url
    URL: {
        now : function(){
            return '/goods/time/now';
        },
        exposer : function(goodsId){
            return '/goods/'+goodsId+'/exposer';
        },
        execution : function(goodsId,md5){
            return '/goods/'+goodsId+'/'+md5+'/execution';
        }
    },
    handleSeckillkill : function(goodsId,node){
        //获取秒杀地址，控制显示逻辑 ，执行秒杀
        $("#killBtn").attr("style","display:block;");


        $.post(seckill.URL.exposer(goodsId),{},function(result){
            //在回调函数中，执行交互流程
            //if(result && result['success']){
            if(true){
                var exposer = result['data'];
                //if(exposer['exposed']){
                console.log("ssssss"+result['data']);
                if(true){
                    //开启秒杀
                    //获取秒杀地址.
                    var md5 = exposer['md5'];
                    console.log("dd"+md5);
                    var killUrl = seckill.URL.execution(goodsId,md5);
                    //绑定一次点击事件
                    $('#killBtn').one('click',function(){
                        //执行秒杀请求
                        //1:先禁用按钮
                        //2:发送秒杀请求执行秒杀
                        $.post(killUrl,{},function(result){
                            if(result && result['success']){
                                var killResult = result['data'];
                                var state = killResult['state'];
                                var stateInfo = killResult['stateInfo'];
                                //3:显示秒杀结果
                                node.html('<span class="label label-success">' + stateInfo + '</span>');
                            }
                        });
                    });
                    node.show();
                } else {
                    //未开启秒杀,
                    var now = exposer['now'];
                    var start = exposer['start'];
                    var end = exposer['end'];
                    //重新计算计时逻辑
                    seckill.countdown(goodsId, now, start, end);
                }
            }else{
                console.log('result:'+result);
                console.log("s");
            }

        });
    },

    countdown: function (goodsId, nowTime, startTime, endTime) {
        var seckillBox = $('#seckill-box');
        //时间判断
        if(nowTime > endTime){
            //秒杀结束
            seckillBox.html('秒杀结束!');
            $("#killBtn").attr("style","display:none;");
        }
        else if(nowTime < startTime){
            //秒杀未开始,计时事件绑定
            var killTime = new Date(startTime + 1000);
            seckillBox.countdown(killTime,function(event){
                //时间格式

                $("#killBtn").attr("style","display:none;");
                var format = event.strftime('秒杀倒计时: %D天 %H时 %M分 %S秒');
                seckillBox.html(format);
                //console.log(seckillBox);
                /*时间完成后回调事件*/
            }).on('finish.countdown',function(){
                seckill.handleSeckillkill(goodsId,seckillBox);
            });
        }else{
            //秒杀开始
            $("#seckill-box").attr("style","display:none;");
            console.log(seckillBox);
            seckill.handleSeckillkill(goodsId,seckillBox);
        }
    },
    //详情页秒杀逻辑
    detail: {
        //详情页初始化
        init : function(params){

            //计时交互
            var startTime = params['startTime'];
            var endTime = params['endTime'];
            var goodsId = params['goodsId'];
            $.get(seckill.URL.now(), {}, function (result) {
                if(result && result['success']){
                    var nowTime = result['data'];
                    //时间判断,计时交互
                    seckill.countdown(goodsId,nowTime,startTime,endTime);
                }else{
                    console.log('result:'+result);
                }
            });
        }
    }
}
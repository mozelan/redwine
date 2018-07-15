(function(){
    $('#header').load('header.html',function(){
        var link=document.createElement("link");
        link.rel="stylesheet";
        link.href="css/header.css";
        $('head').append(link);
        var btnSearch=$('.search-hide');
        $(".smSearch").click(function(e){
            e.preventDefault();
            btnSearch.show();
        });
        $('.cancel').click(function(e){
            e.preventDefault();
            btnSearch.hide();
        });
        $('.confirm').click(function(e){
            e.preventDefault();
            var kw=$(this).parent().prev().val();
            location.href='product_list.html?kw='+kw;
        });
        // 判断是否登陆，如果登录，将登录字样改为退出
        function islogin(){
            $.ajax({
                type:'get',
                url:'/islogin',
                success:function(data){
                    if(data.code>0){
                        $('#mdLogin,#smLogin').html('退出');
                    }else{
                        $('#smLogin').html('登录');
                        $('#mdLogin').html('亲，请登录');
                    }
                },
                error:function(){
                    console.log('网络故障，请检查');
                }
            });
        }
        islogin();

        //头部所用能跳转到登录页的按钮处理事件
        $("header").on('click','#smLogin,#right-btn-login,#mdLogin',function(e){
            e.preventDefault();
            if($("#smLogin").html()=="退出" || $('#mdLogin').html()=="退出"){
                var bool=confirm('您确定要退出登录');
                if(bool){
                    $.ajax({
                        type:'get',
                        url:'/signout',
                        success:function (data) {
                            alert(data.msg);
                            islogin();
                        },
                        error:function (err) {
                            console.log('网络故障，请检查');
                        }
                    })
                }
            }else{
                location.href="login.html?back="+location.href;
            }

        });
        //购物车按钮
        $(".btnCart").click(function(e){
            e.preventDefault();
            $.ajax({
                type:'get',
                url:'/islogin',
                success:function(data){
                    if(data.code>0){
                        location.href="shop_cart.html";
                    }else{
                        location.href = "login.html?back=" + location.href;
                    }
                },
                error:function(){
                    console.log('网络故障，请检查');
                }
            });
        });
        $(".btnRegister").click(function(e){
            e.preventDefault();
            $.ajax({
                type:'get',
                url:'/islogin',
                success:function(data){
                    if(data.code>0){
                        alert(data.msg+'！！！如需注册新账号，请先退出当前账号！');
                    }else{
                        location.href = 'register.html?back=' + location.href;
                    }
                },
                error:function(){
                    console.log('网络故障，请检查');
                }
            });
        });
    });
})();

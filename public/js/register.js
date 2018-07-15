$(function(){
    $(".btn-login").click(function (e) {
       e.preventDefault();
       location.href="login.html";
    });
    //验证输入内容的函数
    function patterns($this,reg,el,strError){
        if(reg.test(el)){
            $this.next().show().html("通过").css({background:'green'});
        }else{
            $this.next().show().html(strError).css({background:'#D14242'});
        }
    }
    // 验证用户名
    $('#uname').keyup(function(){
        let uname=$(this).val();
        $.ajax({
            type:'get',
            url:'/testuname',
            data:{uname},
            success:(data)=>{
                let $this=$(this);
                let reg=/^[a-zA-Z]{4,12}$/;
                if(data.code>0){
                    patterns($this,reg,uname,'用户名格式不正确')
                }else{
                    $this.next().show().html(data.msg).css({background:'#D14242'});
                }
            },
            error:function(){
                console.log('网络故障，请检查');
            }
        });
    });
    //验证手机号
    $("#phone").blur(function(){
        let $this=$(this);
        let reg=/^(\+86|0086)?\S*1[3-8]\d{9}$/;
        let phone=$this.val();
        patterns($this,reg,phone,"手机号不合法");
    });
    //验证邮箱
    $("#email").blur(function(){
        let $this=$(this);
        let reg=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
        let email=$this.val();
        patterns($this,reg,email,"邮箱格式不正确");
    });
    $("#upwd").blur(function(){
        let $this=$(this);
        let reg=/^\w{6,8}$/;
        let email=$this.val();
        patterns($this,reg,email,"请输入6-8位字母数字或下划线");
    });
    $("#cpwd").blur(function(){
        let $this=$(this);
        let cpwd=$this.val();
        let upwd=$("#upwd").val();
        let reg=new RegExp(upwd,"g");
        patterns($this,reg,cpwd,"密码不一致，请重新输入");
    });
    $(".btn-register").click(function(e){
        if($('#uname').val()==''){
            $('#uname').focus();
        }else if($("#phone").val()==''){
            $("#phone").focus();
        }else if($("#email").val()==''){
            $("#email").focus();
        }else if($("#upwd").val()==''){
            $("#upwd").focus();
        }else if($("#cpwd").val()!=$("#upwd").val()){
            $("#cpwd").focus();
            alert("两次密码不一致");
        }else{

            let $intUname=$("#uname");
            let uname=$intUname.val();
            $.ajax({
                type:'get',
                url:'/testuname',
                data:{uname},
                success:(data)=>{
                    if(data.code>0){
                        $.ajax({
                            type:'post',
                            url:'/register',
                            data:$("form").serialize(),
                            success:function(data){
                                alert(data.msg);
                                if(data.code>0){
                                    location.href=location.search.slice(6);
                                }
                            },
                            error:function(){
                                console.log('网络故障，请检查');
                            }
                        });
                    }else{
                        $intUname.focus();
                        $intUname.next().show().html(data.msg).css({background:'#D14242'});
                    }
                },
                error:function(){
                    console.log('网络故障，请检查');
                }
            });
        }
    });
});
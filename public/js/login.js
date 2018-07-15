$(function(){
    $(".btn-register").click(function(){
        location.href="register.html";
    });
    $(".btn-login").click(function(){
        let $btnUname=$("#btn-uname");
        let $btnUpwd=$("#btn-upwd");
        if($btnUname.val()==""){
            alert("用户名不能为空");
            $btnUname.focus();
        }else if($btnUpwd.val()==""){
            alert("密码不能为空");
            $btnUpwd.focus();
        }else{
            $.ajax({
                type:"post",
                url:'/signin',
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
        }

    });
});
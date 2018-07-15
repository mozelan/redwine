$(function(){
    let paperbar=$('.pagination');
    function loadPaper(pno,pageSize){
        $.ajax({
            type:'get',
            url:'/getproducts',
            data:{pno,pageSize},
            success:function(data){
                let paper=data.data;
                let pno=data.pno;
                let pageSize=data.pageSize;
                let pageCount=data.pageCount;
                let html='';
                for(var p of paper){
                    html+=`<div class="col-xs-6 col-md-3">
                        <a href="product_details.html?pid=${p.pid}">
                            <div class="pros-detail">
                                <div>
                                    <img class="img-responsive" src="${p.md}" alt="">
                                </div>
                                <p class="pro-price">￥<span>${p.price}</span></p>
                                <p class="pro-title">${p.title}</p>
                            </div>
                        </a>
                    </div>`;
                }
                $('.productall').html(html);
                let pnohtml='';
                if(pno==1){
                    pnohtml=`<li class="disabled"><span>上一页</span></li>`;
                }else{
                    pnohtml=`<li><span>上一页</span></li>`;
                }
                if(pno-2>0){
                    pnohtml+=`<li><a href="#">${pno-2}</a></li>`;
                }
                if(pno-1>0){
                    pnohtml+=`<li><a href="#">${pno-1}</a></li>`;
                }
                pnohtml+=`<li class="active"><a href="#">${pno}</a></li>`;
                if(pno+1<=pageCount){
                    pnohtml+=`<li><a href="#">${pno+1}</a></li>`;
                }
                if(pno+2<=pageCount){
                    pnohtml+=`<li><a href="#">${pno+2}</a></li>`;
                }
                if(pno==pageCount){
                    pnohtml+=`<li class="disabled"><span>下一页</span></li>`;
                }else{
                    pnohtml+=`<li><span>下一页</span></li>`;
                }
                paperbar.html(pnohtml);
            },
            error:function(err){
                console.log('网络故障，请检查');
            }
        });
    }
    loadPaper(1,8);
    paperbar.on('click','a',function(e){
        e.preventDefault();
        let pno=$(this).html();
        loadPaper(pno,8);
    });
    paperbar.on('click','span',function() {
        if($(this).parent().is(':not(.disabled)')){
            let pno=parseInt(paperbar.find('.active').children().html());
            if($(this).html()=='上一页'){
                pno-=1;
            }else{
                pno+=1;
            }
            loadPaper(pno,8);
        }

    });
});
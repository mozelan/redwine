$(function(){
    function loadNew(assort){
        $.ajax({
            type:'get',
            url:'/getnews',
            data:{assort},
            success:function(data){
                let html='';
                for(let news of data){
                    let {nid,img,title,times,assort,content}=news;
                    html+=`<li>
                            <div class="new-img">
                                <img src="${img}" alt="">
                            </div>
                            <div class="new-detail">
                                <h4><a href="${nid}">${title}</a></h4>
                                <p class="new-time">发布日期：<span>${new Date(times).toLocaleString()}</span> 分类：<span>${assort}</span></p>
                                <p>${content}</p>
                            </div>
                        </li>`;
                    $(".new-main").html(html);
                }
            },
            error:function(){
                console.log('网络故障，请检查');
            }
        });
    }
    loadNew('');
    $(".main .new-menu").on('click','li',function(){
        let assort=$(this).text();
        if(assort=="全部资讯"){
            assort='';
        }
        loadNew(assort);
    });
});

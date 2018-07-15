$(function(){
    let pid=location.search.split("=")[1];
    $.ajax({
        type:'get',
        url:'/getdetails',
        data:{pid},
        success:function(data){
            var {pid,sm,lg,price,recommend,taste,title}=data.cdels;
            //导航条
            let navhtml=`<span>${taste}</span>&nbsp;/&nbsp;<span>${title}</span>`;
            $('.product-details>.dels-nav').append(navhtml);
            let mdhtml=`<img class="img-responsive" src="${lg}" alt="">
                        <div class="row">
                            <div class="img-lg hidden-xs hidden-sm"></div>
                            <div class="img-mask hidden-xs hidden-sm"></div>
                            <div class="mask  hidden-xs hidden-sm"></div>
                        </div>`;
            $('.img-md').html(mdhtml);
            let smhtml=`<li>
                          <img src="${sm}" alt="">
                      </li>`;
            $('.img-sm').html(smhtml);
            $('.img-lg').css({
                background:`url(${lg}) center center`,
            });
            let chtml=`<h3 class="pro-title">${title}</h3>
                        <p class="sub-title">${recommend}</p>
                        <p class="price">￥<span>${price}</span></p>
                        <p class="pro-assort">
                            品种：<span>红葡萄酒</span>
                            口味：<span>${taste}</span>
                        </p>`;
            $('.dels-content').prepend(chtml);
            $('.add-cart').prepend(`<a href="${pid}">加入购物车</a>`);
            //放大镜
            let $imgMask=$('.img-mask');
            let $mask=$('.mask');
            let $imgLg=$('.img-lg');
            $imgMask.mouseover(function(){
                $mask.show();
                $imgLg.show();
            });
            $imgMask.mouseout(function(){
                $mask.hide();
                $imgLg.hide();
            });
            let maskWidth=parseInt($mask.css('width'));
            let imgmaskWidth=parseInt($imgMask.css('width'));
            $imgMask.mousemove(function(e){
                let lefts=e.offsetX-0.5*maskWidth;
                let tops=e.offsetY-0.5*maskWidth;
                lefts=lefts<0?0:lefts>imgmaskWidth-maskWidth?(imgmaskWidth-maskWidth):lefts;
                tops=tops<0?0:(tops>imgmaskWidth-maskWidth)?(imgmaskWidth-maskWidth):tops;
                $mask.css({
                    left:lefts,
                    top:tops,
                });
                $imgLg.css({
                    backgroundSize:2*imgmaskWidth+"px " + 2*imgmaskWidth +"px",
                    backgroundPosition:-2*lefts+"px "+ -2*tops+"px",
                });
            });
            //加载相关商品
            let relateHtml='';
            for(let p of data.relates){
                let {pid,sm,price,title}=p;
                relateHtml+=`<div class="col-xs-6 col-md-3">
                            <a href="product_details.html?pid=${pid}" class="pros-detail">
                                <div>
                                    <img class="img-margin img-responsive" src="${sm}" alt="">
                                </div>
                                <p class="pro-title">${title}</p>
                                <p class="pro-price">￥<span>${price}</span></p>
                            </a>
                        </div>`;
            }
            $('.relate-product').html(relateHtml);
            //加载热销商品
            let hotHtml='';
            for(let p of data.hots){
                let {pid,sm,price,title}=p;
                hotHtml+=`<div class="col-xs-6">
                            <a href="product_details.html?pid=${pid}">
                                <div>
                                    <img class="img-responsive" src="${sm}" alt="">
                                </div>
                                <p class="pro-title">${title}</p>
                                <p class="pro-price">￥<span>${price}</span></p>
                            </a>
                        </div>`;
            }
            $('.pros-hot').html(hotHtml);

        },
        error:function(){
            console.log('网络故障，请检查');
        }
    });
    $('.dels-main .dir-user .dir-menu').on('click','li',function(){
        let $this=$(this);
        $this.addClass('active').siblings().removeClass('active');
        let i=$this.index();
        $this.parent().next().children(":eq("+i+")").addClass('active').siblings().removeClass('active');
    });
    $('.add-cart').click(function(e){
        e.preventDefault();
    });
    $('.add-cart').on('click','a',function(e){
        e.preventDefault();
    });
    $('.add-cart').on('click','span',function(){
        let $this=$(this);
        let count=parseInt($this.siblings(':input').val());
        if($this.html()=='-'){
            if(count>1){
                count--;
            }
        }else{
            count++;
        }
        $this.siblings(':input').val(count);
    });
});
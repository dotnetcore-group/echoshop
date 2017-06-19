$(function(){
	$(".nav-item").each(function(index){
				var hoverItem =$($(".nav-item")[index]);
				var cateCard = hoverItem.find("div.nav-cateCard");
				if(hoverItem.has("div.nav-cateCard").length>0){
					hoverItem.hover(function(){
						cateCard.show();
					},function(){
						cateCard.hide()
					});
				}
			});
			var $fixed_nav =  $($(".fixed-nav")[0]);
			var h_nav_Top = $($(".tab-nav")[0]).offset().top;
			$(window).scroll(function(){
				var scrollTop = $(window).scrollTop();
				slidBar(scrollTop);
				
			});
	function slidBar(scrollTop){
		if(scrollTop >= h_nav_Top){
			$fixed_nav.slideDown(0);

			return;
		}else{
			$fixed_nav.hide();
			return;
		}
		$fixed_nav.hide();
	}

	slidBar($(window).scrollTop());

	var $fixedtoolGoTop = $("#fixedtoolGoTop");
	$(window).scroll(function(){
		
		scrollTop();
	});
	function scrollTop(){
		var scrollTop = $(window).scrollTop();
		console.log(scrollTop);
		if(scrollTop>=800){
			$fixedtoolGoTop.show();
		}else{
			$fixedtoolGoTop.hide();
		}
	}
	$fixedtoolGoTop.on('click',function(){
		$('html, body').animate({
                        scrollTop: 0
                    }, 500);
	});
	scrollTop();
})
(function($){
	$.extend($.fn, {
		menu:function() {
			var mbar = $(this);
			var mlength = parseInt(mbar.css("width")) - 19;
			$("li",mbar).each(function(){
				var menu = $(this)[0];
				if((mlength -= menu.offsetWidth) < 0) {
					var mLi = $("li.navMore", mbar);
					if(!mLi[0]){
						mLi = $("<li class='navMore'><a class='moreButton' href='#morePanel' title='All Navigation'>More...</a><ul class='morePanel'></ul></li>")
						.appendTo($(">ul",mbar)).mouseover(function(){
							$(this).addClass("navMoreOpen");
						}).mouseout(function(){
							$(this).removeClass("navMoreOpen");
						});
					}
					$(".morePanel",mLi).append(menu);					
				}
			});
		}
	});
})(jQuery);


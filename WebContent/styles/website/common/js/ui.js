$(function(){
	$('div.productlist').each(function(){
		var $this = $(this), 
			$viewBox = $this.find('.j-view-box'),
			$btns = $this.find('[name=viewBtn]');
		
		$btns.click(function(){
			var $btn = $(this), view = $btn.attr('rel');
			
			$btns.each(function(){
				$(this).removeClass($(this).attr('value')+'_btnselected');
			});
			
			$btn.addClass(view+'_btnselected');
			$viewBox.removeClass('listview gridview textview').addClass(view);
		});
	});
});
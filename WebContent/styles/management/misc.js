/**
 * 修改website主题风格
 */
DWZ.regPlugins.push(
	function($p){
		var $box = $('#site-themeList', $p),
			$tBoxList = $box.find('.site-theme'),
			form = $box.parents('form:first')[0];
		
		function _changeLayout($layout){
			$tBoxList.find('li[t-layout]').removeClass('down');
			$layout.addClass('down');
			
			form.layout.value = $layout.attr('t-layout');
		}
		
		function _changeTheme($theme){
			$tBoxList.find('li[t-theme]').removeClass('down');
			$theme.addClass('down');
			
			form.theme.value = $theme.attr('t-theme');
		}
		
		function _changePreview($tBox, option) {
			var op = $.extend({layout: $tBox.attr('current-layout'), theme: $tBox.attr('current-theme')}, option);
			var prePicBase = $tBox.attr('pre-pic-base'),
				smPath = prePicBase + '/' + op.layout + '_' + op.theme + '_sm.gif',
				previewUrl = $tBox.attr('preview-url') + '/?layout=' + op.layout + '&theme=' + op.theme;
			
			$tBox.find('div.smPic img').attr('src', smPath);
			$tBox.find('a[target=dialog]').attr('href', previewUrl);
		}
		
		$tBoxList.each(function(index){
			var $tBox = $(this),
				templateName = $tBox.attr('t-template');
			
			$tBox.click(function(){
				$tBoxList.removeClass('themeFocus');
				$tBox.addClass('themeFocus');
				
				form.template.value = templateName;
				
				if ($box.attr('current-template') != templateName) {
					var $layout = $tBox.find('li[t-layout]:first'),
						$theme = $tBox.find('li[t-theme]:first');
					var layout = $layout.attr('t-layout'),
						theme = $theme.attr('t-theme');
					
					$box.attr('current-template', templateName);
					$tBox.attr('current-layout', layout).attr('current-theme', theme);
					
					_changeLayout($layout);
					_changeTheme($theme);
					_changePreview($tBox, {layout:layout, theme:theme});
				}
			});
			
			$tBox.find('li[t-layout]').click(function(){
				$layout = $(this);
				
				setTimeout(function(){
					$tBox.attr('current-layout', $layout.attr('t-layout'));
					_changeLayout($layout);
					_changePreview($tBox);
				}, 100);
			});
			
			$tBox.find('li[t-theme]').click(function(){
				$theme = $(this);
				
				setTimeout(function(){
					$tBox.attr('current-theme', $theme.attr('t-theme'));
					
					_changeTheme($theme);
					_changePreview($tBox);
				}, 100);
			});
		});
	}
);
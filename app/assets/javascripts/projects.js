$(document).ready(function(){
	$("#galery").jqGalScroll({
		ease: null,
    speed: 100,
    height: 300,
    width: 300,
    titleOpacity : .60,
    direction : 'horizontal'
	});

	$('#galery li').tinyTips('green', 'кликните по картинке для просмотра полного изображения');
});

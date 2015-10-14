$(function(){
	$('.form_datetime').datetimepicker({
		language:'zh-CN',
		weekStart : 1,
		todayBtn : 1,
		todayHighlight : 1,
		startView : 2,
		minView : 2,
		pickerReferer:"input",
		forceParse:1,
		autoclose:true,
		pickerPosition : 'bottom-right',
		format: "yyyy-MM-dd",
		showMeridian : false
	});
})
$(function(){
	LazyLoad.css(["../before/flight/css/cityStyle.css"], function () {
            LazyLoad.js(["../before/flight/js/cityScript.js"], function () {
                var test = new citySelector.cityInit("sfz");
                var test2 = new citySelector.cityInit("ddz");
            });
        });
	})
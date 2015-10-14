/*   
Template Name: Color Admin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.1
Version: 1.5.0
Author: Sean Ngu
Website: http://www.seantheme.com/color-admin-v1.5/admin/
*/
var handleCalendarDemo=function(){
"use strict";
		var e={left:"today prev,next ",center:"title",right:"month"};
		var t=new Date;
		var n=t.getMonth();
		var r=t.getFullYear();
		var i=$("#calendar").fullCalendar(
		  	 {header:e,
				selectable:true,
				selectHelper:true,
				droppable:true,
				drop:function(e,t){
					var n=$(this).data("eventObject");
					var r=$.extend({},n);
					r.start=e;
					r.allDay=t;
					$("#calendar").fullCalendar("renderEvent",r,true);
					
					if($("#drop-remove").is(":checked"))
					{$(this).remove()}},
					
					select:function(e,t,n){
						var r=prompt("Event Title:");
						if(r){
						
						i.fullCalendar("renderEvent",{title:r,start:e,end:t,allDay:n},true)}
						i.fullCalendar("unselect")},
						
						eventRender:function(e,t,n){
						var r=e.media?e.media:"";
						var i=e.description?e.description:"";
						t.find(".fc-event-title").after($('<span class="fc-event-icons"></span>').html(r));
						t.find(".fc-event-title").append("<small>"+i+"</small>")},
						editable:true,
						
						events:[{	title:"Event",
									start:new Date(r,n,0),
									end:new Date(r,n,1),
									className:"bg-purple",
									media:'<i class="fa fa-trophy"></i>',
									first:'123',
									description:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
								},
									
									
									
								{		title:"Daily Meeting",
										start:new Date(r,n,10),
										end:new Date(r,n,12),
										allDay:false,
										className:"bg-blue",
										media:'<i class="fa fa-users"></i>',
										first:'123',
										description:"Lorem ipsum dolor sit amet adipiscing elit."
								},
										
										
								{title:"Click for Google",
									start:new Date(r,n,15),
									end:new Date(r,n,17),
									url:"http://google.com/",
									className:"bg-green",
									media:'<i class="fa fa-google-plus"></i>',
									first:'123',
									description:"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
								}]
			});
			
			
			
			$("#external-events .external-event").each(function(){
																				var e= {title:$.trim($(this).attr("data-title")),
																						className:$(this).attr("data-bg"),
																						media:$(this).attr("data-media"),
																						description:$(this).attr("data-desc")
																					    };
									
																			
																			$(this).data("eventObject",e);
																			$(this).draggable({
																								zIndex:999,
																								revert:true,
																								revertDuration:0
																							  })
																})};
							
							var Calendar=function(){
							"use strict";
							return{init:function(){
							handleCalendarDemo()}
							}}()
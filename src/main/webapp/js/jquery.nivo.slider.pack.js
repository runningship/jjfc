$(function(){
	
	
	var bigImg = $("#bigPic li");
	var boxList = bigImg.size();
	
	for(var a=1; a<=boxList; a++){
		
		if(a == 1){
			$("#litPic").append("<li class='s'>"+a+"</li>");
		}else{
			$("#litPic").append("<li>"+a+"</li>");
		}
		
	}
	
	
	var i = 0;
	function show(){
		
		var litImg = $("#litPic li");
		
		bigImg.fadeOut("slow");
    	bigImg.css("z-index","0");
		
		litImg.removeClass("s");
		
		if( (i+1) < boxList){
			
			bigImg.eq(i+1).css("z-index","1");
			bigImg.eq(i+1).fadeIn("slow");
			litImg.eq(i+1).addClass("s");
			i++;
			
		}else{
			
			bigImg.eq(0).css("z-index","1");
			bigImg.eq(0).fadeIn("slow");
			litImg.eq(0).addClass("s");
			i = 0;
			
		}
    	
	}
	
	/*var setIn = setInterval(function(){
					   show();
					},4000);	*/
	
	
	var setIn = setInterval(function(){
					   show();
					},4000);	
	
/*	$("#litPic li").mouseover(function(){clearInterval(setIn);}).mouseout(function(){setIn=setInterval(function(){
										   show();
										   },4000);});*/
	
//延迟触发事件
	var delay=function(t,fn){//接收两个参数 t延迟时间秒为单位，fn要执行的函数      
		var _this=this,//请注意还要个免费的this参数可以让这个delay更完美          
		d=setInterval(function(){                                       
							   fn.apply(_this);                                       
					  },t*1000);               
		_this.onmouseout=function(){                        
			clearInterval(d);  
		};        
	}
	 // delay.apply(this,[0.5,function(){alert(this.id)}]);//调用方法
//延迟触发事件



	$("#litPic li").mouseover(function(){
		
					clearInterval(setIn);
					 
					delay.apply(this,[0.3,function(){
								   
						$("#litPic li").removeClass("s");
						$(this).addClass("s");
						
						var index=$(this).index();
					//	var bigindex=$("#bigImg li");
						
						if(i != index){
							
							bigImg.fadeOut("slow");
							bigImg.css("z-index","0");
							
							bigImg.eq(index).fadeIn("slow");
							bigImg.eq(index).css("z-index","1");
							
							i = index;
							
						}
						
					
					}]); 
					
					
					}).mouseout(function(){setIn=setInterval(function(){
											  show();
										  },4000);});






   $("#newsBox .tit a").mouseover(function(){
	 
	   var index = $(this).index();
	   
	   $("#newsBox .tit a").removeClass("sel");
	   $(this).addClass("sel");
	   
	   $("#newsBoxCon .con").css("display","none");
	   $("#newsBoxCon .con").eq(index).css("display","block");
	   
	   
	   
   });



});




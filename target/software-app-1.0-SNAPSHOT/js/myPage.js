/*
* @Author: apple
* @Date:   2017-09-17 18:16:20
* @Last Modified by:   apple
* @Last Modified time: 2017-09-25 21:41:03
*/
$(function(){
	var k = $(window).height(); // 当前屏幕的高度
	var flag = false;  // 控制动画
    // 点击next 往下播放一屏幕
    $('#fullpage').fullpage({ // fullpage  方法里面接受json对象形式
    	// 是否显示项目导航
    	navigation: true,
    	// navigationPosition: "left",
    	// loopBottom: true,
    	// 滚动速度，单位为毫秒
    	scrollingSpeed: 1200,

    	// 回调函数滚动到第二屏后的回调函数，
        // 接收 anchorLink 和 index 两个参数，
        // anchorLink 是锚链接的名称，index 是序号，从1开始计算

    	afterLoad: function(anchorLink, index) {
            // 往第2屏幕滚动的时候，next 先消失  等所有动画都完毕了 next 才淡出
    		if(index == 2) {
                $(".next").fadeOut();
                // 缓动动画要加到时间的后面，回调函数的前面
    			$(".search").show().animate({"right": 370}, 1500, "easeOutBack", function() {
    				// 方块走进来，925搜索框显示
    				$(".search-wrods").animate({"opacity": 1},500, function() {
    					$(".search").hide();
    					// 图片 往右上角， 缩小
    					$(".search-02-1").show().animate({"height": 30, "right": 250, "bottom": 452}, 1000);
    					// 同时文字变大
    					$(".goods-02").show().animate({"height": 218}, 1000, "easeInOutQuart");
    				});
    			});
    		}
    	},

    	// 刚开始滚动屏幕就触发的回调函数 onLeave
    	// 滚动前的回调函数，接收 index、nextIndex 和 direction 3个参数：index 是离开的“页面”的序号，从1开始计算；nextIndex 是滚动到的“页面”的序号，从1开始计算；direction 判断往上滚动还是往下滚动，值是 up 或 down。
    	onLeave: function(index, nextIndex, direction) {
              // 大手跟随鼠标移动
              $(document).mousemove(function(event) {
                   var x = event.pageX - $(".hand-08").width() / 2;  // 获得鼠标在页面中的x坐标
                   var y = event.pageY + 10;  // 获得鼠标在页面中的y坐标

                   // 手的top 值不能小于 这个大小minY   当前屏幕的高度 K  减去手的高度  449
                   var minY = k - 449;
                   // 把 鼠标在页面中的坐标 给  hand 大手 left  top
                   if(y < minY ) {
                      y = minY;
                   }

                 $(".hand-08").css({"left": x, "top": y});
              });

               // 当我们点击 再来一次的 时候， 分两步进行
               $(".beginAgain").click(function(event) {
                 // 1. 返回第1屏幕
                   $.fn.fullpage.moveTo(1);
                    // 2. 所有的动画都复原 就是原来没有看过的样子
                    // 核心原理就是  让我们的图片（做动画的元素 清除 行内样式就可以）
                    // 所有带有动画的div 盒子 添加 move 类名
                   $("img, .move").attr("style", "");
               });

    	},
  
    }); 
});
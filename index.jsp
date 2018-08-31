<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Telcom</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="static/css/bmap.css">
<style>
* {
	margin: 0;
	padding: 0;
	font-family: "SimHei", '黑体';
}

p {
	margin: 0 !important;
}

.f26 {
	font-weight: bold;
	font-size: 26px;
}

.f14 {
	font-size: 14px;
}


#wrapper {
	position: relative;
	margin: 0px auto;
	width: 100%;
	background-color: #000000
}

#banner {
	position: relative;
	width: 100%;
	overflow: hidden;
}

.imgList {
	position: relative;
	width: 600%;
	z-index: 10;
	overflow: hidden;
}

.imgList .slider_div {
	float: left;
	display: inline-block;
	width: 16.66%;
}

#first,#second,#third ,#zero{
	position: absolute;
	top: 10%;
	margin-top: 10px;
	z-index: 20;   
	cursor: pointer;
	opacity: 1;
	filter: alpha(opacity =   80);

}
#zero{
top:3.5cm
}
#first {
top: 5cm
}
#second{
top: 7cm	
}
#third{
top: 9cm
}
.indexList {
	position: absolute;
	right: 10px;
	top: 5px;
	z-index: 30;
}

.indexList li {
	float: left;
	margin-right: 5px;
	padding: 2px 4px;
	border: 2px solid black;
	background: grey;
	cursor: pointer;
}

.indexList .indexOn {
	background: red;
	font-weight: bold;
	color: white;
}
</style>


</head>
<body>
	<div id="wrapper">
		<!-- 最外层部分 -->
		<div id="banner">
			<!-- 轮播部分 -->
			<div class="imgList">
				<!-- 图片部分 -->
				
				<!-- 第一个页面 -->
				<div class="slider_div">
				<!-- 最外面一层 -->
					<div style="width: 100%;height: 100%;background-color: #000000">
					<!-- 网页标题的设置 -->
						<p
							style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;background-color: #4169E1">运营商在线服务</p>
						<!-- 字体颜色，文本对齐方式，字体大小，字体粗细，行高，段落高度， 外边距，内边距，背景颜色-->
						
						<!-- 中间一层页面，占65% -->
						<div style="width:100%;height:65%; ">
						
						<!-- 中间一层最左边部分，占19.7%，用于显示总的工单量 -->
							<div
								style="float:left; width:19.7%;height: 100%;margin-right:1px;">
								<div
									style="width: 100%;height: 33.3%;margin-bottom:1px;background-color: #000000;">
									<br />
									<p style="color: white;text-align: right;font-size: 25px">今日工单量</p>
									<!--今日工单量标题  -->
									<p id="today" style="color: white;text-align: right;font-size: 30px"></p>
									<!-- 今日工单量数据显示 -->
									<p class="span_div" style="color: white;text-indent:6cm;font-size: 30px">1</p>
								</div>
								<div
									style="width: 100%;height: 33.3%;margin-bottom:1px ;background-color: #000000;">
									<br />
									<p style="color: white;text-align: right;font-size: 25px">月度工单量</p>
									<!-- 月度工单量标题 -->
									<p id="month" style="color: white;text-indent:6cm;font-size: 30px">2</p>
									<!-- 月度工单量数据 -->
								</div>
								<div
									style="width: 100%;height: 33.3%;background-color: #000000; ">
									<br />
									<p style="color: white;text-align: right;font-size: 25px;font-family:;">年度工单量</p>
									<!-- 年度工单量标题 -->
									<p id="history" style="color: white;text-indent:6cm;font-size: 30px">3</p>
								</div>
							</div>
							<!-- 总体工单量显示 -->
							
							<!-- 中间一层中间部分，占49%，用于显示地图 -->
							<div style="float:left; width:49%;height: 100%;margin-right: 1px">
								<div id="SecondMiddleMap" style="width:100%;height: 100%; "></div>
							</div>
							
							<!-- 中间一层最右边部分，用于显示各区域效率效能 -->
							<div style="float:right; width:31%;height: 100%;background-color:wither ;">
							<!-- 模块背景设置  靠左，宽度，背景颜色 -->
							
							<!-- 用于显示效率，占50% -->
								<div style="width: 100%;height: 50%">
									<div style="width: 100%;height: 35%">
										<div style="width: 100%;height: 45%">
											<div style="float:left; width: 100%;height: 100%;background-color: #000000">
												<p style="font-size: 25px;color: white;text-align: center">区域服务效率</p>
											</div>
										</div>
										<div style="width: 100%;height: 55%">
											<div
												style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
												<div style="color: white;text-align: center;">
													<p class="f14">及时量</p>
													<p id="mjsn" class="f26"></p>
												</div>
											</div>
											<div style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
												<div style="color: white;text-align: center;">
													<p class="f14">申告量</p>
													<p id="msg" class="f26"></p>
												</div>
											</div>
											<div
												style="float: left;width: 33.1%;height:100%; background-color: #000000">
												<div style="color: white;text-align: center;">
													<p id="mcg" class="f14" >成功率</p>
												</div>
											</div>
										</div>
									</div>
									<div id="secondRightMiddle" style="width: 100%;height: 65%"></div>
								</div>
								
								<!-- 用于显示效能，占50% -->
								<div style="width: 100%;height: 50%;background-color: #000000">
									<div style="width: 100%;height: 15%">
										<div style="width: 100%;height: 100%">
											<div
												style="float:center; width: 100%;height: 100%;background-color: #000000">
												<p style="font-size: 25px;color: white;text-align: center">区域服务效能</p>
											</div>
										</div>
									</div>
									<div id="secondzz" style="height: 85%;width: 100%;"></div>
								</div>
							</div>
						</div>
						
						<!-- 最下面一层页面，占30%,用于显示各省份的数据 -->
						<div style="width: 100%;height:30%;">
							<div style="float:left; width: 20%;height: 100%">
								<div style="width: 100%;height: 40%">
									<div style="width: 100%;height: 40%">
										<div
											style="float:left; width: 100%;height: 100%;background-color: #000000">
											<p style="font-size: 25px;color: white;text-align: center;">云南</p>
										</div>
									</div>
									<div style="width: 100%;height: 60%">
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div style="color: white;text-align: center;">
												<p class="f14">申告量</p>
												<p id="ys" class="f26"></p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div id="ycl" style="color: white;text-align:center;">
												<p class="f14">成功率</p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000">
											<div id="yjsl" style="color: white;text-align:center;">
												<p class="f14">及时率</p>
											</div>
										</div>
									</div>
								</div>
								<div id="secondRightdown" style="height: 60%;width: 100%"></div>

							</div>
							<div style="float:left; width: 20%;height: 100%">
								<div style="width: 100%;height: 40%">
									<div style="width: 100%;height: 40%">
										<div
											style="float:left; width: 100%;height: 100%;background-color: #000000">
											<p style="font-size: 25px;color: white;text-align: center;">甘肃</p>
										</div>
									</div>
									<div style="width: 100%;height: 60%">
										<div
											style="float: left;width: 33.1%;height:100%; background-color: #000000;margin-right: 1px">
											<div style="color: white;text-align: center;">
												<p class="f14">申告量</p>
												<p id="gs" class="f26"></p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div id="gcl" style="color: white;text-align: center;">
												<p class="f14">成功率</p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000">
											<div id="gjsl" style="color: white;text-align: center;">
												<p class="f14">及时率</p>
											</div>
										</div>
									</div>
								</div>
								<div id="secondleftDownOne" style="width: 100%;height: 60%"></div>
							</div>
							<div style="float:left; width: 20%;height: 100%">
								<div style="width: 100%;height: 40%">
									<div style="width: 100%;height: 40%">
										<div
											style="float:left; width: 100%;height: 100%;background-color: #000000">
											<p style="font-size: 25px;color: white;text-align: center;">广东</p>
										</div>
										<!-- <div
										style="float:left; width: 70%;height: 100%;background-color: ##000000"></div> -->
									</div>
									<div style="width: 100%;height: 60%">
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div style="color: white;text-align: center;">
												<p class="f14">申告量</p>
												<p id="gds" class="f26"></p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div id="gdcl" style="color: white;text-align: center;">
												<p class="f14">成功率</p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000">
											<div id="gdjsl" style="color: white;text-align: center;">
												<p class="f14">及时率</p>
											</div>
										</div>
									</div>
								</div>
								<div id="secondleftDownTwo" style="width: 100%;height: 60%"></div>
							</div>
							<div style="float:left; width: 20%;height: 100%">
								<div style="width: 100%;height: 40%">
									<div style="width: 100%;height: 40%">
										<div
											style="float:left; width: 100%;height: 100%;background-color: #000000">
											<p style="font-size: 25px;color: white;text-align: center;">广西</p>
										</div>
									</div>
									<div style="width: 100%;height: 60%">
										<div
											style="float: left;width: 33.1%;height:100%; background-color: #000000;margin-right: 1px">
											<div style="color: white;text-align: center;">
												<p class="f14">申告量</p>
												<p id="gxs" class="f26"></p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000;margin-right: 1px">
											<div id="gxcl" style="color: white;text-align: center;">
												<p class="f14">成功率</p>
											</div>
										</div>
										<div
											style="float: left;width: 33.1%;height:100%;background-color: #000000">
											<div id="gxjsl" style="color: white;text-align: center;">
												<p class="f14">及时率</p>
											</div>
										</div>
									</div>
								</div>
								<div id="secondzdownOne" style="height: 60%;width: 100%"></div>
							</div>
							<div style="float:left; width: 20%;height: 100%">
								<div style="width: 100%;height: 40%">
									<div style="width: 100%;height: 40%">
										<div
											style="float:left; width: 100%;height: 100%;background-color: #000000">
											<p style="font-size: 25px;color: white;text-align: center;">新疆</p>
										</div>
									</div>
									<div style="width: 100%;height: 60%">
										<div
											style="float: left;width: 33%;height:100%; background-color: #000000;margin-right: 1px">
											<div style="color: white;text-align: center;">
												<p class="f14">申告量</p>
												<p id="xs" class="f26"></p>
											</div>
										</div>
										<div
											style="float: left;width: 33%;height:100%;background-color: #000000;margin-right: 1px">
											<div id="xcl" style="color: white;text-align: center;">
												<p class="f14">成功率</p>
											</div>
										</div>
										<div
											style="float: left;width: 33%;height:100%;background-color: #000000">
											<div id="xjsl" style="color: white;text-align: center;">
												<p class="f14">及时率</p>
											</div>
										</div>
									</div>
								</div>
								<div id="secondzdownTwo" style="height: 60%;width: 100%"></div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<!-- 第二个界面 -->
				<div class="slider_div">
					<div style="width: 100%;height: 100%;background-color: #4169E1">
						<p
							style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">投诉风险指数</p>
						<div style="height:100%;width:100%; background-color:#000000">
							<div class="container">
								<div class="row" style="margin-top:  30px">
									<div class="col-lg-12 text-center">
										<h3 class="section-subheading text-muted">通过对用户的多维度建模分析对潜在投诉的用户做预测对所有用户进行投诉风险评估</h3>
									</div>
								</div>
								<div class="row" style="margin-top:  30px">
									<div class="col-md-6 col-sm-6 portfolio-item">
										<div id="fengxianweidu" style="height:400px"></div>
									</div>
									<div class="col-md-6 col-sm-6 portfolio-item">
										<div id="fengxian" style="height:400px"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- 第三个界面 -->
				<div class="slider_div">
					<div style="width: 100%;height: 100%;background-color: #4169E1">
						<p
							style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
							热点故障分布</p>
						<div style="height:100%;width:100%; background-color:#000000">
							<div class="container">
								<div class="row" style="margin-top: 30px">
									<div class="col-lg-12 text-center">
										<h3 class="section-subheading text-muted">点击左边地图，选择你想要知道的省份的每个地区的详情</h3>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 col-sm-12 portfolio-item">
										<div id="areaMap" style="height:500px"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			<button ondblclick = changeTo(1)>第一张</button>
			</div>
		</div>
		
		<!-- 添加三个按钮用于切换页面 -->
		<button  id="zero" style="background-color:#000000 ;width: 4cm;height: 1.5cm;color: #ffffff;font-size: 20px">导航</button>
		<button  id="first" style="background-color:#000000 ;width: 4cm;height: 2cm;color: #ffffff;font-size: 20px">运营商在线服务</button>
		<button  id="second" style="background-color:#000000 ;width: 4cm;height: 2cm;color: #ffffff;font-size: 21px">投诉风险指数</button>
		<button  id="third" style="background-color:#000000 ;width: 4cm;height: 2cm;color: #ffffff;font-size: 21px" >热点故障分布</button>
			
			 <div style="text-align:center;">

    </div>

	</div>


	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/js/jquery-2.2.1.min.js"></script>
	<!-- 弹层插件 -->
	<script src="js/layer/layer.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/bootstrap.min.js"></script>
	<!-- echarts -->
	<script src="js/echarts.js"></script>

	<script type="text/javascript">
		require.config({
			paths : {
				'echarts' : 'js'
			}
		});

		var curIndex = 0, //当前index
		imgLen = $(".imgList .slider_div").length; //图片总数
		// 定时器自动变换2.5秒每次
		var autoChange = setInterval(function() {
			if (curIndex < imgLen - 1) {
				curIndex++;
			} else {
				curIndex = 0;
			}
			//调用变换处理函数
		    changeTo(curIndex);  
		}, 6000);
		
		//按钮点击处理
		$("#first").click(function() {
			//根据curIndex进行上一个图片处理
			changeTo(0);
			//清除定时器,保持界面不变
			clearInterval(autoChange);
		});
		$("#second").click(function() {
			//根据curIndex进行上一个图片处理
			changeTo(1);
			clearInterval(autoChange);
		});
		$("#third").click(function() {
			//根据curIndex进行上一个图片处理
			changeTo(2);
			clearInterval(autoChange);
		});
		
		
		//对右下角按钮index进行事件绑定处理等
		$(".indexList").find("li").each(function(item) {
			$(this).hover(function() {
				clearInterval(autoChange);
				changeTo(item);
				curIndex = item;
			}, function() {
				/* autoChangeAgain(); */
			});
		});
		//清除定时器时候的重置定时器--封装
		/*  function autoChangeAgain(){ 
		     autoChange = setInterval(function(){ 
		      if(curIndex < imgLen-1){ 
		        curIndex ++;
		      }else{ 
		        curIndex = 0;
		      }
		   	//调用变换处理函数
		     	changeTo(curIndex);
		     	},5000);
		 } */
		function changeTo(num) {
			var goLeft = num;
			$(".imgList").animate({
				left : "-" + goLeft * 100 + "%"
			}, 500);
			$(".indexList").find("li").removeClass("indexOn").eq(num).addClass(
					"indexOn");
		}
		 
		 
		 
		 
	</script>
	<script type="text/javascript"
		src="http://api.map.baidu.com/api?v=2.0&ak=whWrhHB8Q2orXafl4B9sb1fwuBsaqV8Q">
		//v2.0版本的引用方式：src="http://api.map.baidu.com/api?v=2.0&ak=您的密钥"
		//v1.4版本及以前版本的引用方式：src="http://api.map.baidu.com/api?v=1.4&key=您的密钥&callback=initialize"
	</script>
	<script type="text/javascript" src="js/jslib/one.js"></script>
	<script type="text/javascript" src="js/jslib/two.js"></script>
	<script type="text/javascript" src="js/jslib/three.js"></script>
</body>
</html>

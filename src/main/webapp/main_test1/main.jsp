<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<script>
		$(function() {
			
		});
	</script>
	
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		header{width:100%; min-width:1184px; height:96px; background-color:#000000;}
		.list-banner{width:100%; min-width:1184px; height:560px;
					 background-image:url("./../images/main_firstgift_logout.29ecc8b.png"); background-size:cover;
					 background-position-x:50%; background-position-y:50%; background-repeat-x:no-repeat; background-repeat-y:no-repeat;
					 background-origin: initial; cursor: pointer;}
		.index-event{width: 1184px; height:180.8px; margin-top: 48px; margin-left: auto; margin-right: auto;}
		.index-mainevent{width:572px; height:176px; float:left;
						 background-image:url("./../images/202204_event_newporkcutlettender-pc-banner.png"); background-size:cover;}
		.index-freshplan{width:592px; height:176px; float:left;
						 background-image:url("./../images/freshplan.9fe4775.png"); background-size:cover;}
   	    .list-data{width:1184px; margin-top:80px; margin-left:auto; margin-right:auto;}
   	    h5{font-size:32px; line-height: 32px; margin-left:14px; margin-bottom:30px;}
		.ul02 li{list-style:none; float:left; 
				 width:376px; height:481.6px; margin-bottom:61px; margin-left:14px;}
		.li02{margin-left:28px; margin-right:28px;}
		.lidiv{width:376px; height:416px; background-color:#f9f7f8;}
		.clean-div{width:376px; height:60px;}
		.clean-list{width:75px; height:30px; margin-top:20px; margin-left:20px;}
		.image-div{width:376px; height:250px;}
		.productim{width:275px; margin-left:50px; cursor:pointer;}
		.ul02 button{border:2px solid #eee; width:72px; height:72px; margin-top:10px; margin-left:288px;
					 background-color:#fff; border-radius: 50%; box-shadow: 0 25px 10px -15px rgb(0 0 0 / 12%);
					 cursor: pointer;}
		.ul02 button:hover{background-color:#000; border:2px solid #000;}
		.ul02 i{background-image:url("./../images/bacart.png"); width:68px; height:68px; display:block; background-size:cover;}
		.ul02 button:hover i{background-image:url("./../images/wicart.png");}
		.ul02 h6{font-size:18px; margin-top:16px; cursor: pointer;}
		.ul02 p{font-size:14px; color:#9b9b9b; cursor: pointer;}
		.index-shop{margin-top: 33px; margin-left:auto; margin-right:auto; display:block; cursor:pointer;}
		/*
		footer{width:100%;  height:248px; background-color:#000000; display: inline-block; margin-top:150px; }
		.footer_navigation{width:1184px; height:40px; background-color:#fff; margin-top:11px; margin-left:auto; margin-right:auto; }
		.footer_split{width:100%; height:1px; background-color:#eee; margin-top:10px; }
		.footer_main{width:1184px; height:176px; }
		*/
	</style>
	
	<link href="./../css/productDetail3.css" rel="stylesheet" type="text/css">
	
</head>

<body style="overflow: auto;">
	<div id="app">
    	<div id="modals-container">
    	</div>
    	<div class="app__desktop">
        	<div class="app__desktop-scroll">
            	<div>
                	<!--
                	-->
                	<jsp:include page="./../common/common3_header.jsp"></jsp:include>
	            	
	            	
	            	<div class="list-banner"></div>
					<div class="index-event">
						<div class="index-mainevent"></div>
						<div class="index-freshplan"></div>
					</div>
					<div class="list-data">
						<h5>정육각 베스트 상품</h5>
						<ul class="ul02">
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.png">
									</div>
									<div class="image-div">
									<img class ="productim" src="./../images/porkbelly-fresh-list.png">
									</div>
									<button>
										<i></i>			
									</button>
								</div>
								<h6>초신선 돼지 삼겹살 구이용</h6>
								<p>기준가 16,800원/600g</p>
							</li>
						</ul>
						<img class="index-shop" src="./../images/banner_shop.96086e0.png">
					</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer2.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
	<!-- 
		<script type="text/javascript" src=/static/js/manifest.f3c6f536a5970b3b01fe.js></script>
		<div id="criteo-tags-div" style="display: none;"></div>
		<script type="text/javascript" src=/static/js/vendor.b9779ff96c2a7d56b4a4.js></script>
		<script type="text/javascript" src=/static/js/app.82827e98469bd56f5745.js></script>
	 -->
	
</body>
</html>
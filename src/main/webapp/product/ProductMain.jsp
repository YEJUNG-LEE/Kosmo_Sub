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
		.list-banner{width:100%; min-width:1184px; height:520px;
					 background-image:url("./../images/pcpork.png"); background-size:cover;
					 background-position-x:50%; background-position-y:50%; background-repeat-x:no-repeat; background-repeat-y:no-repeat;
					 background-origin: initial; ckground-clip: initial; background-color: initial;}
		.list-tab{width:1184px; margin-top:72px; margin-left:auto; margin-right:auto; text-align:center;}
	  	.list-tab li:hover p{color:#fff; background-color:#212121;}
	  	.ul01{width:1184px }
	    .ul01 li{list-style:none; display:inline-block; width:143.63px; height:56px; line-height:56px; background-color:#f5f5f5;
	    	  	 border-radius:2px;}
   	    .ul01 p{font-size:16px; font-weight:700; color:#212121;}
   	    .list-data{width:1184px; margin-top:72px; margin-left:auto; margin-right:auto;}
		.ul02 li{list-style:none; float:left; 
				 width:376px; height:481.6px; margin-bottom:61px; margin-left:14px;}
		.li02{margin-left:28px; margin-right:28px;}
		.lidiv{width:376px; height:416px; background-color:#f9f7f8;}
		.clean-div{width:376px; height:60px;}
		.clean-list{width:75px; height:30px; margin-top:20px; margin-left:20px;}
		.image-div{width:376px; height:250px;}
		.productim{width:208px; margin-top:40px; margin-left:84px;}
		.ul02 button{border:2px solid #eee; width:72px; height:72px; margin-top:10px; margin-left:288px;
					 background-color:#fff; border-radius: 50%; box-shadow: 0 25px 10px -15px rgb(0 0 0 / 12%);
					 cursor: pointer;}
		.ul02 button:hover{background-color:#000; border:2px solid #000;}
		.ul02 i{background-image:url("./../images/bacart.png"); width:68px; height:68px; display:block; background-size:cover;}
		.ul02 button:hover i{background-image:url("./../images/wicart.png");}
		.ul02 h6{font-size:18px; margin-top:16px; cursor: pointer;}
		.ul02 p{font-size:14px; color:#9b9b9b; cursor: pointer;}
	</style>
	
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
					<div class="list-tab">
						<ul class="ul01">
							<li><p><span>돼지</span></p></li>
							<li><p><span>소</span></p></li>
							<li><p><span>닭</span></p></li>
							<li><p><span>수산</span></p></li>
							<li><p><span>밀키트</span></p></li>
							<li><p><span>우유</span></p></li>
							<li><p><span>달걀</span></p></li>
							<li><p><span>이유식</span></p></li>
						</ul>
					</div>
					<div class="list-data">
						<ul class="ul02">
							<li>
								<div class="lidiv">
									<div class= "clean-div">
										<img class="clean-list" src="./../images/clean.svg">
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
										<img class="clean-list" src="./../images/clean.svg">
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
					</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
</body>
</html>
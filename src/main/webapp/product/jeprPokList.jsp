<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common_yj/jecommon.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		header{width:100%; min-width:1184px; height:96px; background-color:#000000;}
		a{text-decoration:none; color:inherit;}
		a:hover,a:active{text-decoration: none; color:inherit;}
		.prlist-banner{width:100%; min-width:1184px; height:520px;
					 background-position-x:50%; background-position-y:50%; background-repeat-x:no-repeat; background-repeat-y:no-repeat;
					 background-origin: initial; ckground-clip: initial; background-color: initial;}
		.prlist-tab{width:1184px; margin-top:72px; margin-left:auto; margin-right:auto; text-align:center;}
		.prlist-tab li:hover p{color:#fff; background-color:#212121; border-radius:2px;}
	  	.prul01{width:1184px }
	    .prul01 li{list-style:none; display:inline-block; width:143.63px; height:56px; line-height:56px; background-color:#f5f5f5;
	    	  	 border-radius:2px;}
   	  	 input[type=submit]{width:143.63px; height:56px; border:0; outline:0; border-radius:2px; font-size:16px; font-weight:700; color:#212121; font-family: 'Noto Sans KR', sans-serif;}
   	  	 input[type=submit]:hover{background-color:#212121; border-radius:2px; color:#fff;}
   	  	 input[type=submit]:active{background-color:#212121; border-radius:2px; color:#fff;}
   	    .prli01-p{font-size:16px; font-weight:700; color:#212121;}
   	    .prlist-data{width:1184px; margin-top:72px; margin-left:auto; margin-right:auto;}
		.prul02 li{list-style:none; float:left; 
				 width:376px; height:481.6px; margin-bottom:61px; margin-left:14px;}
		.prli02{margin-left:28px; margin-right:28px;}
		.prlidiv{width:376px; height:416px; background-color:#f9f7f8;}
		.prclean-div{width:376px; height:60px;}
		.prclean-list{width:75px; height:30px; margin-top:20px; margin-left:20px;}
		.primage-div{width:376px; height:250px;}
		#productim{margin-top:40px; margin-left:84px; cursor:pointer;}
		.admin-button{width:220px; height:30px; margin-left:78px; }
		#but-admin{width:100px; height:30px; border:1px solid #999; outline:0; border-radius:2px; font-size:14px; font-weight:600;  background-color:#fff; color:#212121; font-family: 'Noto Sans KR', sans-serif;
							margin-top:30px; margin-left:5px;}
   	  	#but-admin:hover{background-color:#000; color:#fff; border-radius:2px; cursor:pointer;}
		.prcart-button{border:2px solid #eee; width:72px; height:72px; margin-top:10px;margin-left:288px; text-align:center;
					 background-color:#fffff; border-radius: 50%; box-shadow:0 25px 10px -15px rgba(0, 0, 0, 0.1); 
					 cursor:pointer; position: relative; vertical-align: middle;}
		.prcart-button:hover{background-color:#212121;  border:2px solid #212121; }			 
		.prcart-button:hover .prcart-btnh{display: block; }			 
		.prcart-btn{width:68px; height:68px; }
		.prcart-btnh{width:68px; height:68px; position: absolute; top: 0px; left: 0px;display: none;  margin-left:1px; margin-left:2px;}
		.prul02 h6{font-size:18px; margin-top:16px; cursor: pointer;}
		.prul02 p{font-size:14px; color:#9b9b9b; cursor: pointer;}
		footer{width:100%;  height:248px; background-color:#000000; display: inline-block; margin-top:150px; }
		.footer_navigation{width:1184px; height:40px; background-color:#fff; margin-top:11px; margin-left:auto; margin-right:auto; }
		.footer_split{width:100%; height:1px; background-color:#eee; margin-top:10px; }
		.footer_main{width:1184px; height:176px; }
		
		
	</style>
	<script type="text/javascript">
	   $(document).ready(function(){
		   
		   
		   $('.prul01').click(function(){
				 $('.active').removeClass('active');
				 $('.prul01'+$(this).text()).addClass('active');
		   }
		   
		   
		});
		   
		   $(function() {
			   var category_num = 1;

			   $('#pro02').click(function(){
			            
			            
			                   $("#pro02").attr("background-color : black;")
			         });

			});   
	   </script>
</head>
<body>
	<div class="prdiv-banner">
		<img class="prlist-banner"  alt="banner" src="<%=contextPath%>/images/${requestScope.category}.png">
	</div>
	<div class="prlist-tab">
		<ul class="prul01">
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Pork">
					<p class="prli01-p">
						<span>
							<input type="submit" value="돼지">
						</span>
					</p>
				</form>
			</li>
			<li id="pro02">
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Beef">
					<p class="prli01-p">
						<span>
							<input type="submit" value="소">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Chicken">
					<p class="prli01-p">
						<span>
							<input type="submit" value="닭">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Seafood">
					<p class="prli01-p">
						<span>
							<input type="submit" value="수산">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Mealkit">
					<p class="prli01-p">
						<span>
							<input type="submit" value="밀키트">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Milk">
					<p class="prli01-p">
						<span>
							<input type="submit" value="우유">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Egg">
					<p class="prli01-p">
						<span>
							<input type="submit" value="달걀">
						</span>
					</p>
				</form>
			</li>
			<li>
				<form action="<%=yesForm%>"  method="post">
				<input type="hidden" name="command" value="prList">
				<input type="hidden"  name="category" value="Baby">
					<p class="prli01-p">
						<span>
							<input type="submit" value="이유식">
						</span>
					</p>
				</form>
			</li>
		</ul>
	</div>
	<div class="prlist-data">
		<ul class="prul02">
			<c:forEach var="bean" items="${requestScope.lists}">
				<li>
					<div class="prlidiv">
						<div class= "prclean-div">
							<c:set var="strin1" value ="${bean.name}"/>
							<c:if test="${fn:containsIgnoreCase(strin1, '무항생제') == true}">
								<img class="prclean-list" src="<%=contextPath%>/images/clean.svg">
							</c:if>
							<c:if test="${fn:containsIgnoreCase(strin1, '무항생제') == false}">
							</c:if>
						</div>
						<div class="primage-div">
						<%--경로 : ${applicationScope.realPath} <br/>
						이름 : ${bean.image} <br/> --%>
						<a href="<%=noForm%>prDetail&num=${bean.num}">
							<img id="productim"  class="productim" alt="${bean.name}" width="208px" 
									src="${applicationScope.realPath}/${bean.image}">
						</a>
						</div>
						 <c:if test="${whologin == 2}">
						 		<div class="admin-button">
									<a href="<%=noForm%>prUpdate&num=${bean.num}">
										<button id="but-admin" type="submit" class="btn btn-default">수정</button>
									</a>
									<a href="<%=noForm%>prDelete&num=${bean.num}">
										<button id="but-admin" type="submit" class="btn btn-default">삭제</button>								
									</a>
								</div>
							</c:if>
							<c:if test="${whologin != 2}">
								<div class="prcart-button">
									 <a href="<%=noForm%>maAdd&num=${bean.num}">
									 	<img class="prcart-btn"  alt="" src="<%=contextPath%>/images/bacart.png" >	
										 <img class="prcart-btnh"  alt="" src="<%=contextPath%>/images/wicart.png" >
									 </a>
								</div>
							</c:if>
					</div>
					<h6><a href="<%=noForm%>prDetail&num=${bean.num}">${bean.name}</a></h6>
					<c:choose>
						<c:when test="${bean.category == 'Milk'}"><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}ml</a></p></c:when>
						<c:when test="${bean.category == 'Egg'}"><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}구</a></p></c:when>
						<c:otherwise><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}g</a></p> </c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
		</ul>
	</div>
	<footer>
		<div class="prfooter_navigation">
			
		</div>
		<div class="prfooter_split"></div>
		<div class="prfooter_main">
			<div class="prfooter_main_info"></div>
			<div class="prfooter_main_cs"></div>
		</div>
	</footer>
</body>

</html>
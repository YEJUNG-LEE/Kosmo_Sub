<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common_yj/jecommon.jsp" %>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		.list-banner{width:100%; min-width:1184px; height:560px;
					 background-image:url("<%=contextPath%>/images/main_firstgift_logout.29ecc8b.png");
					 background-size:cover;
					 background-position-x:50%; background-position-y:50%; background-repeat-x:no-repeat; background-repeat-y:no-repeat;
					 background-origin: initial; cursor: pointer;}
		.index-event{width: 1184px; height:180.8px; margin-top: 48px; margin-left: auto; margin-right: auto;}
		.index-mainevent{width:572px; height:176px; float:left;
						 background-image:url("<%=contextPath%>/images/202204_event_newporkcutlettender-pc-banner.png"); background-size:cover;}
		.index-freshplan{width:592px; height:176px; float:left;
						 background-image:url("<%=contextPath%>/images/freshplan.9fe4775.png"); background-size:cover;}
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
		.ul02 i{background-image:url("<%=contextPath%>/images/bacart.png"); width:68px; height:68px; display:block; background-size:cover;}
		.ul02 button:hover i{background-image:url("<%=contextPath%>/images/wicart.png");}
		.ul02 h6{font-size:18px; margin-top:16px; cursor: pointer;}
		.ul02 p{font-size:14px; color:#9b9b9b; cursor: pointer;}
		.index-shop{margin-top: 33px; margin-left:auto; margin-right:auto; display:block; cursor:pointer;}
		
		footer{width:100%;  height:248px; background-color:#000000; display: inline-block; margin-top:150px; }
		.footer_navigation{width:1184px; height:40px; background-color:#fff; margin-top:11px; margin-left:auto; margin-right:auto; }
		.footer_split{width:100%; height:1px; background-color:#eee; margin-top:10px; }
		.footer_main{width:1184px; height:176px; }
		
	</style>
</head>
<body>
	<div class="list-banner"></div>
	<div class="index-event">
		<div class="index-mainevent"></div>
		<div class="index-freshplan"></div>
	</div>
	<div class="list-data">
		<h5>정육각 베스트 상품</h5>
		<ul class="ul02">
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
						<div class="prcart-button">
							 <c:if test="${whologin == 2}">
								<a href="<%=noForm%>prUpdate&num=${bean.num}">수정</a>
								<br/><br/>
								<a href="<%=noForm%>prDelete&num=${bean.num}">삭제</a>
							</c:if>
							<c:if test="${whologin != 2}">
								 <a href="">
								 <img class="prcart-btn"  alt="" src="<%=contextPath%>/images/bacart.png" >	
								 <img class="prcart-btnh"  alt="" src="<%=contextPath%>/images/wicart.png" >
								 </a>
							</c:if>
						</div>
					</div>
					<h6><a href="<%=noForm%>prDetail&num=${bean.num}">${bean.name}</a></h6>
					<c:choose>
						<c:when test="${bean.category == 'Milk'}"><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}ml</a></p></c:when>
						<c:when test="${bean.category == 'Egg'}"><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}구</a></p></c:when>
						<c:otherwise><p><a href="<%=noForm%>prDetail&num=${bean.num}">기준가 <fmt:formatNumber pattern="#,###,###"  value="${bean.price}"/>원/${bean.gram}g</a></p> </c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
			<%-- <li>
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
			</li>--%>
		</ul>
		<img class="index-shop" src="<%=contextPath%>/images/banner_shop.96086e0.png">
	</div>
	<footer>
		<div class="footer_navigation">
			
		</div>
		<div class="footer_split"></div>
		<div class="footer_main">
			<div class="footer_main_info"></div>
			<div class="footer_main_cs"></div>
		</div>
	</footer>
</body>

</html>
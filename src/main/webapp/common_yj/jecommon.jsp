<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 로그인 정보는 session 영역에 loginfo라는 이름으로 바인딩하겠습니다. --%>
<%-- 로그인시 id가 admin이면 관리자로 해석합니다. --%>
<%-- whologin 변수는 로그인 상태를 저장하고 있습니다. --%>
<%-- whologin : 미로그인(0), 일반 사용자(1), 관리자(2)  --%>

<%@page import="shopping.member.bean.Member"%>
<%
	// 테스트를 위한 임시 코드 작성 예정
	//Member loginfo = new Member();

	/*
	// 일반 사용자
	loginfo.setId("hong") ; 
	loginfo.setName("홍길동");
	session.setAttribute("loginfo", loginfo) ;
	*/
	
	/*
	// 관리자
	loginfo.setId("admin") ; 
	loginfo.setName("홍길동");	
	session.setAttribute("loginfo", loginfo) ;
	*/
	
	// 미로그인은 코딩 할거 없슴	 
%>


<c:set var="whologin" value="0"/>

<c:if test="${not empty sessionScope.loginfo}">
	<c:if test="${sessionScope.loginfo.cId == 'admin'}">
		<c:set var="whologin" value="2"/>
	</c:if>
	<c:if test="${sessionScope.loginfo.cId != 'admin'}">
		<c:set var="whologin" value="1"/>
	</c:if>	
</c:if>


<%
	// contextPath : 해당 애플리케이션의 이름(컨텍스트 이름) 
	//이미지 절대 경로 만들기
	String contextPath = request.getContextPath() ;

	// 서블릿 매핑 이름 
	String mapping = "/Shopping" ;
	
	// 폼 태그에서 사용할 공용 변수  
	String yesForm = contextPath + mapping ;
	
	// 폼이 없는 <a>, <img> 태그에서 사용할 공용 변수
	String noForm = yesForm + "?command=" ;
%>    
<%
	int twelve = 12 ; // for BootStrap
%>	    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		header{width:100%; min-width:1184px; height:96px; background-color:#000000;}
		a{text-decoration:none; color:inherit;}
		a:hover,a:active{text-decoration: none;}
		.jeheader-div{width:1184px; height:72px; margin-left:auto; margin-right:auto; padding-top:24px;}
		.jeheader-icon{float:left; cursor:pointer;} 
		.jeheader-1{width:240.19px; height:18px; list-style:none; float:left; margin-left:34px; margin-top:16px;}
		.jeheader-1 li{width:80px; height:18px; float:left; padding-left:1px; padding-right:5px; margin-right:14px;
						 line-height:18px; cursor:pointer; font-weight:700; font-size:18px; color:#fff;}
		.jemenu span:hover {width:68px; height:28px; border-bottom:1px solid #fff;}
		.jenavi-div{width:500px; height:48px; float:right;}		
		.jenavi-1{width:155px; height:18px; float:left; margin-top:18px; list-style:none; color:#fff;}	
		#jenavi-01{width:70px; text-align:center;}
		.jenavi-1 li{width:80px; height:18px; float:left; font-size:14px; line-height:18px; cursor:pointer; color:#fff; text-align:center;}	
		.jenavi-2{width:1px; height:12px; float:left;  margin-left:5px; margin-right:10px; margin-top:22px; background-color:#fff;} 
		.jenavi-3{width:155px; height:18px; float:left; margin-top:18px; list-style:none; color:#fff;}	
		.jenavi-3 li{width:65px; height:18px; float:left; font-size:14px; line-height:18px; cursor:pointer; color:#fff; text-align:center;}	
		.jenavicart{float:left; margin-left:10px; cursor:pointer;}
		.jenavicart-img{float:left;}
		.jenavi-navi{float:left; margin-left:8px; cursor:pointer;}
	</style>
	</head>
<body>
	<header>
		<div class="jeheader-div">
			<a href="<%=noForm%>main"><img class="jeheader-icon" alt="" src="<%=contextPath%>/images/blob.jpg" width="129px" height="48px"></a>
			<ul class="jeheader-1">
				<li class="jemenu">
					<span><a href="<%=noForm%>prList&whologin=${whologin}">쇼핑하기</a></span>
				</li>
				<li class="jemenu">
					<c:if test="${whologin == 2}">
					<span><a  href="<%=noForm%>prInsert">상품등록</a></span>
					</c:if>
				</li>		
			</ul>
			<div class="jenavi-div">
				<ul class="jenavi-1">
					<li>
						<c:if test="${whologin == 1}">
							<a>마이페이지</a>
						</c:if>
					<li id="jenavi-01">글 게시판</li>
				</ul>
				<div class="jenavi-2"></div>
				<ul class="jenavi-3">
					<li>
						 <c:if test="${whologin == 0}">
							<a href="<%=noForm%>meLogin">로그인</a>
						</c:if>
						<c:if test="${whologin != 0}">
								<a href="<%=noForm%>meLogout">로그아웃</a>
							</c:if>
					</li>
					<li class="jenavi-li3">회원가입</li>
				</ul>
				<div class="jenavicart">
					<img class="jenavicart-img" alt="" src="<%=contextPath%>/images/navicart.svg" width="48px" height="48px"
					onclick="location.href='<%=noForm%>maList'">
				</div>
				<div class="jenavi-navi">
					<img alt="" src="<%=contextPath%>/images/navi.svg" width="48px" height="48px">
				</div>
			</div>
		</div>
	</header>
	
	<%-- message 변수는 사용자에게 어떠한 메시지를 전달하기 위하여 session 영역에 저장합니다. --%>
	<% //session.setAttribute("message", "고갱님 많이 사주셔셔 감사합니다."); %>
	<c:if test="${not empty sessionScope.message}">
		<div id="divalert" class="alert alert-info alert-dismissible">
	  		<a href="#" id="mymessage" class="close" data-dismiss="alert" aria-label="close">닫기</a>
	  		<strong>${sessionScope.message}</strong>
		</div>
	</c:if>
	<% session.removeAttribute("message"); %>	
	
	<%-- errmsg 변수는 사용자에게 어떠한 메시지를 전달하기 위하여 request 영역에 저장합니다. --%>
	<% //request.setAttribute("errmsg", "고갱님~~이러시면 안됩니다."); %>
	<c:if test="${not empty requestScope.errmsg}">
		<div id="divalert" class="alert alert-danger alert-dismissible">
	  		<a href="#" id="myerrmsg" class="close" data-dismiss="alert" aria-label="close">닫기</a>
	  		<strong>${requestScope.errmsg}</strong>
		</div>
	</c:if>
	<% request.removeAttribute("errmsg"); %>	
	
	<!-- <span class="err">잘못된 정보</span> -->
</body>
</html>
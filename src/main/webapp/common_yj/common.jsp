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
	<c:if test="${sessionScope.loginfo.id == 'admin'}">
		<c:set var="whologin" value="2"/>
	</c:if>
	<c:if test="${sessionScope.loginfo.id != 'admin'}">
		<c:set var="whologin" value="1"/>
	</c:if>	
</c:if>


<%
	// contextPath : 해당 애플리케이션의 이름(컨텍스트 이름)
	String contextPath = request.getContextPath() ;

	String images = contextPath + "/images";

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
	
	<!-- for BootStrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style type="text/css">	
		/* 유효성 검사시 경고성으로 보여주는 빨간 색 글자를 위한 스타일 */
		.err{font-size: 10px; color: red; font-weight: bolder;}			
		.navbar-inverse11{background-color: yellow; opacity: 0.7;}
		#mymessage{font-size: 13px;margin-top: 7px; margin-right: 20px; color: black;}
		#divalert{border-radius: 10px;margin-left: 30px;margin-right: 30px;}
	</style>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('.navbar-inverse').addClass('navbar-inverse');	
		});
	</script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">쇼핑몰</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%=noForm%>main">Home</a></li>
				<li>
					<a href="#" class="dropdown-toggle"> 
						<font color="white">
							<c:if test="${whologin == 0}">
								미로그인
							</c:if>
							<c:if test="${whologin != 0}">
								${sessionScope.loginfo.name}(${sessionScope.loginfo.id})님
							</c:if>
						</font>
					</a>
				</li>
				<!-- 회원 섹션 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">회원<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<c:if test="${whologin == 0}">
								<a href="<%=noForm%>meInsert">회원 가입</a>
							</c:if>
							<c:if test="${whologin != 0}">
								<a href="<%=noForm%>meUpdate&id=${sessionScope.loginfo.id}">회원 정보 수정</a>
							</c:if>
						</li>
						<li>
							<c:if test="${whologin == 0}">
								<a href="<%=noForm%>meLogin">로그인</a>
							</c:if>
							<c:if test="${whologin != 0}">
								<a href="<%=noForm%>meLogout">로그 아웃</a>
							</c:if>
						</li>
						<li>
							<c:if test="${whologin == 1}">
								<a href="<%=noForm%>meDelete&id=${sessionScope.loginfo.id}">회원 탈퇴</a>
							</c:if>
						</li>
						<li>
							<c:if test="${whologin == 2}">
								<a href="<%=noForm%>meList">회원 목록 보기</a>
							</c:if>
						</li>
						<li>
							<c:if test="${whologin == 1}">
								<a href="<%=noForm%>meDetail">회원 상세 보기</a>
							</c:if>
						</li>
					</ul>
				</li>
				<!-- 게시물 섹션 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">게시물<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<c:if test="${whologin != 0}">
								<a href="<%=noForm%>boInsert">게시물 등록</a>
							</c:if>
						</li>	 
						<li>
							<c:if test="${whologin != 0}">
								<a href="<%=noForm%>boList">게시물 목록 보기</a>
							</c:if>
						</li>						
					</ul>
				</li>				
				<!-- 상품 섹션 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">상품<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<c:if test="${whologin == 2}">
								<a href="<%=noForm%>prInsert">상품 등록</a>
							</c:if>
						</li>	 
						<li>
							<a href="<%=noForm%>prList">상품 목록 보기</a>
						</li>						
					</ul>
				</li>
				<!-- 쇼핑몰 섹션 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">쇼핑몰<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<c:if test="${whologin != 0}">
								<a href="<%=noForm%>maOrder">나의 쇼핑 내역</a>
							</c:if>
						</li>	 
						<li>
							<a href="<%=noForm%>maList">장바구니</a>
						</li>						
					</ul>
				</li>
				<!-- 데이터 보기 섹션 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">데이터 보기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=noForm%>viewExam01">회원과 게시물</a></li>	 
						<li><a href="<%=noForm%>viewExam02">회원별 게시물 건수</a></li>
						<li><a href="<%=noForm%>viewExam03">주문 정보</a></li>
						<li><a href="<%=noForm%>viewExam04">고객별 매출 총액</a></li>
						<li><a href="<%=noForm%>viewExam05">회원별 주문 건수</a></li>						    
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${whologin == 0}">
	      			<li>
	      				<a href="<%=noForm%>meInsert"><span class="glyphicon glyphicon-user"></span> 회원 가입</a>
	      			</li>
	      			<li>
	      				<a href="<%=noForm%>meLogin"><span class="glyphicon glyphicon-log-in"></span> 로그인</a>
	      			</li>				
				</c:if>
				<c:if test="${whologin != 0}">
	      			<li>
	      				<a href="<%=noForm%>meUpdate&id=${sessionScope.loginfo.id}">
	      					<span class="glyphicon glyphicon-pencil"></span> 
	      					회원 정보 수정
	      				</a>
	      			</li>
	      			<li>
	      				<a href="<%=noForm%>meLogout"><span class="glyphicon glyphicon-log-out"></span> 로그 아웃</a>
	      			</li>				
				</c:if>
    		</ul>
		</div>
	</nav>
	
	<%-- message 변수는 사용자에게 어떠한 메시지를 전달하기 위하여 session 영역에 저장합니다. --%>
	<% //session.setAttribute("message", "고갱님 많이 사주셔셔 감사합니다.") %>
	<c:if test="${not empty sessionScope.message}">
		<div id="divalert" class="alert alert-info alert-dismissible">
	  		<a href="#" id="mymessage" class="close" data-dismiss="alert" aria-label="close">닫기</a>
	  		<strong>${sessionScope.message}</strong>
		</div>
	</c:if>
	<% session.removeAttribute("message"); %>	
	
	<%-- errmsg 변수는 사용자에게 어떠한 메시지를 전달하기 위하여 request 영역에 저장합니다. --%>
	<% //request.setAttribute("errmsg", "고갱님~~이러시면 안됩니다.") %>
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
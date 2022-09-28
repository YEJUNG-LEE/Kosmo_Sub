<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:set var="whologin" value="0"/>
<c:set var="logoutCheck" value="test"/>

<c:if test="${not empty sessionScope.loginfo}">
	<c:if test="${not empty sessionScope.adminCheck}">
	
		<c:if test="${sessionScope.adminCheck == 'member'}">
			<!-- 로그인한 사람이 회원일 경우 -->
			<c:set var="whologin" value="1"/>
			<c:set var="myinfo" value="${sessionScope.loginfo.cId}"/>
			<c:set var="logoutCheck" value="meLogout"/>
		</c:if>
		
		<c:if test="${sessionScope.adminCheck == 'admin'}">
			<!-- 로그인한 사람이 관리자일 경우 -->
			<c:set var="whologin" value="2"/>
			<c:set var="myinfo" value="${sessionScope.loginfo.id}"/>
			<c:set var="logoutCheck" value="adLogout"/>
		</c:if>
		
	</c:if>	
</c:if>

<%
	// contextPath : 해당 애플리케이션의 이름(컨텍스트 이름)
	String contextPath = request.getContextPath() ;
	//System.out.println("contextPath : " + contextPath);
	
	// 서블릿 매핑 이름 
	String mapping = "/Shopping" ;
	 //System.out.println("mapping : " + mapping);
	 
	// 폼 태그에서 사용할 공용 변수  
	String yesForm = contextPath + mapping ;
	// String yesForm = contextPath ;
	//System.out.println("yesForm : " + yesForm);
	
	// 폼이 없는 <a>, <img> 태그에서 사용할 공용 변수
	String noForm = yesForm + "?command=" ;
	//System.out.println("noForm : " + noForm);
%>    

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<!-- datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!--  -->
	
    <title>정육각 :: 언제나 초신선</title>
    
    <link rel="icon" href="https://yookgak.com/website/favicon16.png" sizes="16x16">
    <link rel="icon" href="https://yookgak.com/website/favicon32.png" sizes="32x32">
    <link rel="icon" href="https://yookgak.com/website/favicon192.png" sizes="192x192">
    
	<link href="./../css/productDetail3.css" rel="stylesheet" type="text/css">
	
</head>
<body style="overflow: auto;">
	
</body>
</html>
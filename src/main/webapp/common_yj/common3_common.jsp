<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	// contextPath : 해당 애플리케이션의 이름(컨텍스트 이름)
	String contextPath = request.getContextPath() ;

	// 서블릿 매핑 이름 
	String mapping = "/Shopping" ;
	
	// 폼 태그에서 사용할 공용 변수  
	String yesForm = contextPath + mapping ;
	
	// 폼이 없는 <a>, <img> 태그에서 사용할 공용 변수
	String noForm = yesForm + "?command=" ;
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
	<script>
	$(document).ready(function() {
		$("#home_icon_img").click(function(){
			// alert('home_icon_img click');
			location.href = "<%=noForm%>main" ;
		});
		
		$("#goto_memberLoginForm").click(function(){
			// alert('goto_memberLoginForm click');
			location.href = "./../member/memberLoginForm.jsp" ;
		});
		
		$("#goto_memberRegister").click(function(){
			// alert('goto_memberRegister click');
			location.href = "./../member/memberRegister.jsp" ;
		});
		
		$("#goto_reviewMain_test1").click(function(){
			// alert('goto_reviewMain_test1 click');
			location.href = "./../review/reviewMain_test1.jsp" ;
		});
		
		$(".navigation-cart").click(function(){
			// alert('navigation-cart click');
			location.href = "<%=noForm%>maList" ;
		});
    });
	</script>
	
</head>
<body style="overflow: auto;">
</body>
</html>
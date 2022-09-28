<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<%
	int twelve = 12 ; // 부트 스트랩
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!-- 나는 공용 파일입니다. -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<%
	int label = 3 ; // 양식의 label 너비
	int content = twelve - label ; // 양식의 입력 상자(input, select, textarea 등)의 너비 
%>
<%
	//Human managers = new Human();

	//request.setAttribute("managers", managers) ; // 관리자 목록을 바인딩
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  
	<style type="text/css">
	div{display: inline-block;}
 	.box1{width: 250px; height: 50px; border: 1px solid black; background-color: red;
 			display: inline-block;}
 	.box2{width: 250px; height: 50px; border: 1px solid black; background-color:#fff000;}
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			
			$("#birth").datepicker({dateFormat : "yy/mm/dd"}); // 날짜 선택기
		});
	</script>
</head>
<body>
	<div class="box1" align="center">ddddd</div>
	<div class="box2">ddddd</div>
</body>
</html>
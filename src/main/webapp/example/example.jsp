<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<a href="<%=noForm%>hello">헬로우</a>
	<br>
	<a href="<%=noForm%>world">월드</a>
	<br>
	<form action="<%=yesForm%>" method="post">
		<input type="hidden" name="command" value="hello">
		<input type="text" name="name" value="홍길동">
		<input type="submit" value="전송">
	</form>
	<br>
	<form action="<%=yesForm%>" method="post">
		<input type="hidden" name="command" value="world">
		<input type="text" name="su" value="1234">
		<input type="submit" value="전송">
	</form>
	<br>
</body>
</html>
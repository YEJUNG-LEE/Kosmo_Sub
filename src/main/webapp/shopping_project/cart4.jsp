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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<style type="text/css">
#info1 {
	border: 1px solid black; opacity: 0.7;
}

td {
	border: 1px solid black; opacity: 0.7;
}
.info2{background-color: #808080; opacity: 0.7;}
</style>
<script type="text/javascript">
		$(document).ready(function() {
			$("#birth").datepicker(); // 날짜 선택기
		});
	</script>
</head>
<body>
	<div class="container" align="center">
		<header>
			<h2>주문하기</h2>
		</header>
		
		<div class="col-sm-offset-1 col-sm-10">

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<div>
						<table id="info1">
							<tbody>
							<tr>
								<td class="info2">이름</td>
								<td><input type="text" class="form-control" id="id"
									placeholder="아이디 입력" name="name"></td>
							</tr>
							<tr>
								<td class="info2">아이디</td>
								<td><input type="text" class="form-control" id="id"
									placeholder="아이디 입력" name="id"></td>
							</tr>
							<tr>
								<td class="info2">전화번호</td>
								<td><input type="text" class="form-control" id="id"
									placeholder="아이디 입력" name="phone"></td>
							</tr>
						</table>
					</div>
				</div>
				</form>
			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<table id="info1">
						<tr>
							<td class="info2">이름</td>
							<td><input type="text" class="form-control" id="id"
								placeholder="아이디 입력" name="name"></td>
						</tr>
						<tr>
							<td class="info2">아이디</td>
							<td><input type="text" class="form-control" id="id"
								placeholder="아이디 입력" name="id"></td>
						</tr>
						<tr>
							<td class="info2">주소</td>
							<td><input type="text" class="form-control" id="id"
								placeholder="아이디 입력" name="phone"></td>
						</tr>
						</tbody>
					</table>
				</div>
				</form>
				</div>
			</div>
</body>
</html>
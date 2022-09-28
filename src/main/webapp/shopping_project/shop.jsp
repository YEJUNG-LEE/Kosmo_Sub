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
	.form-group{border: 1px solid black;}
	.row {display: table-row;}
	.cell {display: table-cell; padding: 3px;
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			
			$("#birth").datepicker({dateFormat : "yy/mm/dd"}); // 날짜 선택기
		});
	</script>
</head>
<body>
	<div id="table">
		<div class="row">
			<span class="cell col1">열 1-1</span> 
			<span class="cell col2">열 1-2</span> 
			<span class="cell col3">열 1-3</span> 
			<span class="cell col4">열 1-4</span>
		</div>
	</div>
	<div class="container" align="center">
		<h2>주문하기</h2>
		<div class="col-sm-offset-1 col-sm-10">
			<div class="panel">
				<div class="panel-heading">
					<!-- 이미지 div -->
				</div>
				<div class="panel-body" class="col-sm-8">
					<form class="form-horizontal" action="<%=yesForm%>" method="post">
						<input type="hidden" name="command" value="meInsert">

						<p align="left">보내시는 분</p>
						<div class="form-group" >
							<div class="col-sm-<%=label%>" align="left"> 이름 : </div>
						</div>
						<div class="form-group">
							<div class="col-sm-<%=label%>" align="left"> 전화번호 : </div>
						</div>
						<div class="form-group">
							<div class="col-sm-<%=label%>" align="left"> 이메일 : </div>
						</div>
							<br/><br/><br/><br/><br/><br/>
							
						<p align="left">받으시는 분</p>
						<div class="form-group">
							<label class="col-sm-<%=label%>" for="name" align="left"> 이름 : </label>
							<div class="col-sm-<%=content%>"></div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-2">
								<button id="submit" type="submit" class="btn btn-default">주문하기</button>
							</div>

							<div class="col-sm-offset-1 col-sm-2">
								<button type="reset" class="btn btn-default">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
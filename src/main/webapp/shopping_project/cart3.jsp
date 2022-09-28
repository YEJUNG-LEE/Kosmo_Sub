<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./../common/common.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web Project</title>
		
		<style type="text/css">
			#infotable{border: 1px solid #808080;}
			#infotable1{border: 1px solid #808080;}
			td{border:1px solid #808080;}
			.info1{background-color:#D3D3D3; opacity: 0.5; color: black;}
			.info2{background-color:#D3D3D3; opacity: 0.5; color: black;}
			.panel-title{font-size: 30px; font-weight: 50px;}
			#addresscheck{margin-right: 100px;}
		</style>
		
		<script type="text/javascript">
			$(document).ready(function(){
				
			});
		</script>
	</head>
	
	<body>
		<br/>
			<div class="container">
					<h2 class="panel-title" align="center">주문하기</h2>
				<div class="panel-heading">
				</div>
				<br/><br/><br/><br/><br/><br/>
			<div class="col-sm-offset-0 col-sm-10">
			<h4>보내시는 분</h4>
		<div class="container">
			<div class="panel panel-default">
			<table id="infotable" class="table table-hover">
						<tr>
							<td class="info1">이름</td>
							<td>이예중</td>
						</tr>
						<tr>
							<td class="info1">전화번호</td>
							<td>01056565656</td>
						</tr>
						<tr>
							<td class="info1">이메일</td>
							<td>ㅈㅂㄷㅂㅈㄷ@424123</td>
						</tr>
				</table>
			</div> <!-- panel-default class -->
		</div> <!-- full container class -->
	</div>
		<br/><br/>
		<div class="col-sm-offset-0 col-sm-10">
			<h4>받으시는 분</h4>
			<input type="button" name="addresscheck" value="주소선택" id="addresscheck" >
		</div>
		<div class="container">
			<div class="panel panel-default">
			<table id="infotable1" class="table table-hover">
						<tr>
							<td class="info2">이름</td>
							<td>이예중</td>
						</tr>
						<tr>
							<td class="info2">전화번호</td>
							<td>01056565656</td>
						</tr>
						<tr>
							<td class="info2">주소</td>
							<td>서울시</td>
						</tr>
					</table>
				</div> <!-- panel-default class -->
			</div> <!-- full container class -->
		</div>
	</body>
</html>

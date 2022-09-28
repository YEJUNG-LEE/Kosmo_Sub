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
		.radio-inline{margin-left: 5px;}
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#fakeaddress').attr('disabled', true); // 주소 읽기 전용으로 설정
			$('.radio-inline').addClass('radio-inline') ; // 라디오 버튼 스타일 지정
			
			var managers = ['yusin', 'kim9', 'soon'];
			$.each(managers, function(index, item){
				console.log(item);
				var optvalue = '<option value="' + item + '">' + item + '</option>' ;
				$('#manager').append(optvalue);
			});	
			
			$("#birth").datepicker(); // 날짜 선택기
		});
	</script>
</head>
<body>
	<div class="container" align="center">
		<h2>회원 가입하기</h2>
		<div class="col-sm-offset-1 col-sm-10">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title" align="left">
						<b>회원 가입</b>을 위한 양식입니다.
					</h3>
				</div>
				<div class="panel-body" class="col-sm-8">
					<form class="form-horizontal" action="/action_page.php">

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="id"> 아이디 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="id"
									placeholder="아이디 입력" name="id">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="name"> 이름 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="name"
									placeholder="이름 입력" name="name">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="password"> 비밀 번호 : </label>
							<div class="col-sm-<%=content%>">
								<input type="password" class="form-control" id="password"
									placeholder="비밀 번호 입력" name="password">
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="gender"> 성별 : </label>
							<div class="col-sm-<%=content%>" align="left">
								<label class="radio-inline"><input type="radio" id="gender1" name="gender" value="남자">남자</label>
								<label class="radio-inline"><input type="radio" id="gender2" name="gender" value="여자">여자</label>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="birth"> 생일 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="birth"
									placeholder="생일 입력" name="birth">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="marriage"> 결혼 여부 : </label>
							<div class="col-sm-<%=content%>" align="left">
								<label class="radio-inline"><input type="radio" id="marriage1" name="marriage" value="결혼">결혼</label>
								<label class="radio-inline"><input type="radio" id="marriage2" name="marriage" value="이혼">이혼</label>
								<label class="radio-inline"><input type="radio" id="marriage3" name="marriage" value="미혼">미혼</label>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="salary"> 급여 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="salary"
									placeholder="급여 입력" name="salary">
							</div>
						</div>

						
						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="address"> 주소 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="fakeaddress" name="fakeaddress">
								<input type="text" id="address" name="address">
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="address"> 관리자 : </label>
							<div class="col-sm-<%=content%>">
								<select class="form-control" id="manager" name="manager">
								    <option value="-">--- 관리자를 선택해 주세요. ------------------</option>								    
							  	</select>								
							</div>
						</div>
						
						<%-- 마일리지 적립 포인트는 숨겨서 0으로 넘김 --%>
						<input type="hidden" id="mpoint" name="mpoint" value="0">
						

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-2">
								<button id="submit" type="submit" class="btn btn-default">로그인</button>
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
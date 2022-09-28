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
			
			$("#birth").datepicker({dateFormat: "yy/mm/dd"}); // 날짜 선택기
			
			$('option[value="${requestScope.bean.manager}"]').attr('selected', true);	
		});
	</script>
</head>
<body>
	<div class="container" align="center">
		<h2>회원 수정하기</h2>
		<div class="col-sm-offset-1 col-sm-10">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title" align="left">
						<b>회원 수정</b>을 위한 양식입니다.
					</h3>
				</div>
				<div class="panel-body" class="col-sm-8">
					<form class="form-horizontal" action="<%=yesForm%>" method="post"> 
						<input type="hidden" name="command" value="meUpdate"> 
						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="id"> 아이디 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="fakeid"
									disabled="disabled" name="fakeid" value="${requestScope.bean.id}">
									
								<input type="hidden" name="id"  value="${requestScope.bean.id}">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="name"> 이름 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="name"
									 name="name" value="${requestScope.bean.name}">									
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
							
								<label class="radio-inline">
									<c:if test="${requestScope.bean.gender == '남자'}">
										<input type="radio" id="gender1" name="gender" value="남자" checked="checked">남자
									</c:if>
									
									<c:if test="${requestScope.bean.gender != '남자'}">
										<input type="radio" id="gender1" name="gender" value="남자">남자
									</c:if>
								</label>
								
								<label class="radio-inline">
									<c:if test="${requestScope.bean.gender == '여자'}">
										<input type="radio" id="gender2" name="gender" value="여자" checked="checked">여자
									</c:if>
									
									<c:if test="${requestScope.bean.gender != '여자'}">
										<input type="radio" id="gender2" name="gender" value="여자">여자
									</c:if>
								</label>
						
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="birth"> 생일 : </label>
							<div class="col-sm-<%=content%>">
								<input type="date" class="form-control" id="birth"
									placeholder="생일 입력" name="birth" value="${requestScope.bean.birth}">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="marriage"> 결혼 여부 : </label>
							<div class="col-sm-<%=content%>" align="left">
								<label class="radio-inline">
									<c:if test="${requestScope.bean.marriage == '결혼'}">
										<input type="radio" id="marriage1" name="marriage" value="결혼" checked="checked">결혼
									</c:if>
									<c:if test="${requestScope.bean.marriage != '결혼'}">
										<input type="radio" id="marriage1" name="marriage" value="결혼">결혼
									</c:if>
								</label>
								<label class="radio-inline">
									<c:if test="${requestScope.bean.marriage == '이혼'}">
										<input type="radio" id="marriage2" name="marriage" value="이혼" checked="checked">이혼
									</c:if>
									<c:if test="${requestScope.bean.marriage != '이혼'}">
										<input type="radio" id="marriage2" name="marriage" value="이혼">이혼
									</c:if>
								</label>
								<label class="radio-inline">
									<c:if test="${requestScope.bean.marriage == '미혼'}">
										<input type="radio" id="marriage3" name="marriage" value="미혼" checked="checked">미혼
									</c:if>
									<c:if test="${requestScope.bean.marriage != '미혼'}">
										<input type="radio" id="marriage3" name="marriage" value="미혼">미혼
									</c:if>
								</label>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="salary"> 급여 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="salary"
									placeholder="급여 입력" name="salary" value="${requestScope.bean.salary}">
							</div>
						</div>

						
						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="address"> 주소 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="fakeaddress" name="fakeaddress" value="${requestScope.bean.address}">
								<input type="text" id="address" name="address" value="${requestScope.bean.address}">
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

						
						<div class="form-group">
							<label class="control-label col-sm-<%=label%>" for="mpoint"> 적립 포인트 : </label>
							<div class="col-sm-<%=content%>">
								<input type="text" class="form-control" id="fakempoint"
									disabled="disabled" name="fakempoint" value="${requestScope.bean.mpoint}">
									
								<input type="hidden" name="mpoint"  value="${requestScope.bean.mpoint}">
							</div>
						</div>						
						

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-2">
								<button id="submit" type="submit" class="btn btn-default">수정 하기</button>
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
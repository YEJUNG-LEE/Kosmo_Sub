<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		.HoneyDew{background-color: HoneyDew ;}
		.mystyle{background-color: LightYellow; color:red;}  
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
			
			$('#id, #password').on('focus', function(){
				$(this).addClass('HoneyDew');
			});
			$('#id, #password').on('blur', function(){
				$(this).removeClass('HoneyDew');
			});
			
			$('#submit').hover(
				function(){
					$(this).animate({marginLeft:'+2px', marginTop:'+2px'}, 100);
					//$(this).addClass('btn-primary');
					$(this).addClass('mystyle');
					$(this).removeClass('btn-default');					
				},
				function(){
					$(this).animate({marginLeft:'-2px', marginTop:'-2px'}, 100);
					//$(this).removeClass('btn-primary');
					$(this).removeClass('mystyle');
					$(this).addClass('btn-default');
				}
			);
		});	
	</script>
</head>
<body>
	<div class="container">
		<div class="col-sm-offset-2 col-sm-8">
			<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title" align="center">
					로그인하기(아이디에 툴팁 적용)
				</h3>
			</div>
			<div class="panel-body" class="col-sm-8">
				  <form class="form-horizontal" action="<%=yesForm%>" method="post">
				  	<input type="hidden" name="command" value="meLogin">					  
				    <div class="form-group">
				      <label class="control-label col-sm-2" for="id"> 아이디 : </label>
				      <div class="col-sm-10">
				        <input type="text" class="form-control" id="id" 
				        	placeholder="Enter id" name="id"
				        	data-toggle="tooltip" title="아이디는 3글자 이상 10글자 이하로 입력해 주세요."
				        	data-placement="left" >
				      </div>
				    </div>
				    
				    <div class="form-group">
				      <label class="control-label col-sm-2" for="">비밀 번호 :</label>
				      <div class="col-sm-10">          
				        <input type="password" class="form-control" id="password" 
				        	placeholder="비번 넣어라" name="password">
				      </div>
				    </div>
				    
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
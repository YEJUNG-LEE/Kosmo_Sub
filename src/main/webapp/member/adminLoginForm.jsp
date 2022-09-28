<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<script>
		$(function() {
			$(".login__register").click(function(){
				// alert('login__register click');
				location.href = "./../member/memberRegister.jsp" ;
			});
		});
	</script>
	
	<style type="text/css">
		.login-form__box .login-form__input-form .login-form__input-area #login-form__input-email[data-v-3b623747],
		.login-form__box .login-form__input-form .login-form__input-area #login-form__input-password[data-v-3b623747] {
		    width: 312px;
		    height: 46px;
		    border: 1px solid #e1dedf;
		    padding-left: 14px;
		    font-size: 14px;
		    margin-top: 8px;
		    box-sizing: content-box;
		}
	</style>
	
</head>

<body style="overflow: auto;">
	<div id="app">
    	<div id="modals-container">
    	</div>
    	<div class="app__desktop">
        	<div class="app__desktop-scroll">
            	<div>
                	<!--
                	-->
                	<jsp:include page="./../common/common3_header.jsp"></jsp:include>
                	<div data-v-3b623747="">
						<div data-v-3b623747="" id="modals-container">
						</div>
						<div data-v-3b623747="">
	    					<div data-v-3b623747="" class="login__title">관리자 로그인
	    					</div>
						    <p data-v-3b623747="" class="login__subtitle">이메일 로그인</p>
						    <article data-v-3b623747="" class="login-form__box">
						        <form data-v-3b623747="" class="login-form__input-form" action="<%=yesForm%>" method="post">
						        	<input type="hidden" name="command" value="adLogin">
	                           				
						            <section data-v-3b623747="" class="login-form__input-area">
							            <input data-v-3b623747="" id="login-form__input-email" name="adId" type="text" placeholder="아이디(이메일 주소)를 입력하세요" required="required"> 
							            <input data-v-3b623747="" id="login-form__input-password" name="adPassword" type="password" placeholder="비밀번호를 입력하세요" required="required">
						            </section> 
						            <input data-v-3b623747="" type="submit" class="login-form__input-submit" value="로그인">
						        </form>
						    </article>
						    <article data-v-3b623747="" class="login__auth">
						        <section data-v-3b623747="">
						        	<a href="/member/memberLoginForm.jsp">
							            <p data-v-3b623747="" class="login__identify">고객 로그인</p>
						        	</a>
						        </section>
						    </article>
    						<p data-v-3b623747="" class="login__subtitle">SNS 간편 로그인</p>
							<article data-v-3b623747="" class="snslogin__area">
							    <div data-v-3b623747="">
							    	<button data-v-3b623747="" sns-type="kakao">
						            	<div data-v-3b623747="">
						            		<img data-v-3b623747="" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzNDMUUxRSI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPHBhdGggZD0iTTE2LjUgNkMyMi4yOTkgNiAyNyA5LjU4IDI3IDEzLjk5N2MwIDQuNDE2LTQuNzAxIDcuOTk3LTEwLjUgNy45OTctLjYwMiAwLTEuMTkyLS4wMzktMS43NjYtLjExM2wtNC41MzggNC4wMTdjLS4xNjYuMTQ3LS40MjEuMTMzLS41Ny0uMDMxLS4wOTYtLjEwNi0uMTI3LS4yNTUtLjA4My0uMzlsMS41MTYtNC42NEM4LjAyNiAxOS40MzYgNiAxNi44OTggNiAxMy45OTggNiA5LjU4IDEwLjcwMSA2IDE2LjUgNnoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC05NSAtOCkgdHJhbnNsYXRlKDk1IDgpIi8+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=" width="32px" height="32px">
						            		<span data-v-3b623747="">카카오로 시작하기</span>
						            	</div>
							        </button>
							        <button data-v-3b623747="" sns-type="naver" id="naverIdLogin_loginButton">
							            <div data-v-3b623747="">
								            <img data-v-3b623747="" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iI0ZGRiI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPHBhdGggZD0iTTEzLjUgMjQuNUwxMy41IDE2LjUgMTkgMjQuNSAyNS41IDI0LjUgMjUuNSA4IDE5IDggMTkgMTYgMTMuNSA4IDcgOCA3IDI0LjV6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtOTUgLTgpIHRyYW5zbGF0ZSg5NSA4KSIvPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" width="32px" height="32px">
								            <span data-v-3b623747="">네이버로 시작하기</span>
							            </div>
							        </button>
								</div>
							</article>
    						<p data-v-3b623747="" class="login__register">정육각이 처음이신가요? 
	    						<span data-v-3b623747="">회원가입하기
	    						</span>
    						</p>
						</div>
					<!---->
					<!---->
					<!---->
					</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer2.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 
	<script type="text/javascript">
	
		$(document).ready(function() {
			$('#modals-container_temp').hide();
		});
	</script>
	 -->
	
	<script>
		$(function() {
			
			
			
			$("#goto_main").click(function(){
				// alert('goto_main click');
				location.href = "./../main/main.jsp" ;
			});
			
			if ( $("#register-agree__check1").attr("checked")!="checked" ) {
				$("#register-agree__check1").click(function(){
					// alert('register-agree__check1 click');
					$("#register-agree__check1").attr("checked","checked");
				});
			} else {
				$("#register-agree__check1").click(function(){
					// alert('register-agree__check1 click');
					$("#register-agree__check1").removeAttr("checked");
				});
			}
			
			if ( $("#register-agree__check2").attr("checked")!="checked" ) {
				$("#register-agree__check2").click(function(){
					// alert('register-agree__check2 click');
					$("#register-agree__check2").attr("checked","checked");
				});
			} else {
				$("#register-agree__check2").click(function(){
					// alert('register-agree__check2 click');
					$("#register-agree__check2").removeAttr("checked");
				});
			}
			
			$("#goto_insert").click(function(){
				if ( $("#register-agree__check1").attr("checked")=="checked" && $("#register-agree__check2").attr("checked")=="checked" ) {
					location.href = "./../member/memberInsertForm.jsp" ;
				} else {
					$('#modals-container_temp').removeAttr("style");
				}
			});
			
			$(".plaintext__submit").click(function(){
				$('#modals-container_temp').attr("style","display:none");
			});
			
			
			
			
		});
	</script>
	
	<style type="text/css">
		.register__title[data-v-78d799ef] {
		  text-align: center;
		  font-size: 32px;
		  margin-top: 100px;
		}
		.register-status__box[data-v-78d799ef] {
		  width: 1180px;
		  height: 94px;
		  background-color: #f7f7f7;
		  margin-top: 33px;
		  margin-left: auto;
		  margin-right: auto;
		  text-align: center;
		}
		.register-status__box .register-status__centered[data-v-78d799ef] {
		    display: inline-block;
		}
		.register-status__box .register-status__centered .register-status__icon-1[data-v-78d799ef] {
		      display: block;
		      float: left;
		      margin-top: 22px;
		      width: 56px;
		      height: 52px;
		      background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTYuNyA1MS40IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1Ni43IDUxLjQ7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MXtmaWxsOm5vbmU7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPHJlY3QgeD0iMS44IiB5PSIxLjgiIGNsYXNzPSJzdDAiIHdpZHRoPSI0MC40IiBoZWlnaHQ9IjQ3LjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI5IiB5MT0iMTYuMSIgeDI9IjM1LjEiIHkyPSIxNi4xIi8+Cgk8bGluZSBjbGFzcz0ic3QxIiB4MT0iOSIgeTE9IjI1LjYiIHgyPSIzNS4xIiB5Mj0iMjUuNiIvPgoJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjkiIHkxPSIzNS4xIiB4Mj0iMzUuMSIgeTI9IjM1LjEiLz4KCTxjaXJjbGUgY2xhc3M9InN0MCIgY3g9IjQwLjgiIGN5PSIzNS40IiByPSIxNC4xIi8+Cgk8cG9seWxpbmUgY2xhc3M9InN0MSIgcG9pbnRzPSIzMy41LDM2LjEgMzguNyw0MC40IDQ1LjcsMzIuNiAJIi8+CjwvZz4KPC9zdmc+Cg==) no-repeat;
		}
		.register-status__box .register-status__centered p[data-v-78d799ef] {
		      float: left;
		      font-size: 15px;
		      color: #d8d8d8;
		      margin-top: 35px;
		      font-weight: bold;
		}
		.register-status__box .register-status__centered .register-status__text-1[data-v-78d799ef] {
		      margin-left: 17.2px;
		}
		.register-status__box .register-status__centered .register-status__text-2[data-v-78d799ef] {
		      margin-left: 16.5px;
		}
		.register-status__box .register-status__centered .register-status__icon-step[data-v-78d799ef] {
		      float: left;
		      display: block;
		      width: 17.8px;
		      height: 30.8px;
		      margin-top: 32px;
		      margin-left: 39px;
		      background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTguNyAzMS43IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxOC43IDMxLjc7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDpub25lO3N0cm9rZTojMDQwMDAwO3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8cG9seWxpbmUgY2xhc3M9InN0MCIgcG9pbnRzPSIxLjgsMjkuOCAxNi44LDE1LjggMS44LDEuOCAiLz4KPC9zdmc+Cg==) no-repeat;
		}
		.register-status__box .register-status__centered .register-status__icon-2[data-v-78d799ef] {
		      display: block;
		      float: left;
		      margin-top: 25.6px;
		      margin-left: 35px;
		      width: 51px;
		      height: 45.6px;
		      background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTQuNSA0NS4zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1NC41IDQ1LjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDpub25lO3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MXtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEuOCIgeTE9IjQzLjUiIHgyPSI1Mi43IiB5Mj0iNDMuNSIvPgoJPHBvbHlnb24gY2xhc3M9InN0MSIgcG9pbnRzPSI1LjMsMzQuNCAxOS42LDM0LjMgNTIuNywxNC41IDQ1LjEsMS44IDEyLDIxLjYgNS4yLDM0LjIgCSIvPgoJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjEyIiB5MT0iMjEuNiIgeDI9IjE5LjYiIHkyPSIzNC4zIi8+CjwvZz4KPC9zdmc+Cg==) no-repeat;
		}
		.register-agree__container[data-v-78d799ef] {
		  width: 780px;
		  margin-top: 46px;
		  margin-left: auto;
		  margin-right: auto;
		  margin-bottom: 80px;
		}
		.register-agree__container .register-agree__title[data-v-78d799ef] {
		    overflow: hidden;
		}
		.register-agree__container .register-agree__title span[data-v-78d799ef] {
		      font-size: 15px;
		      margin-left: 9px;
		      line-height: 24px;
		}
		.register-agree__container .register-agree__content[data-v-78d799ef] {
		    width: 778px;
		    height: 175px;
		    border: 1px solid #e1dedf;
		    margin-top: 16px;
		    margin-bottom: 34px;
		    overflow: auto;
		    overflow-x: hidden;
		}
		.register-agree__container .register-agree__content iframe[data-v-78d799ef] {
		      margin-left: 20px;
		      padding-right: 20px;
		      padding-top: 20px;
		      border: none;
		}
		.register-button__area[data-v-78d799ef] {
		  overflow: hidden;
		  margin-top: 6px;
		}
		.register-button__area button[data-v-78d799ef] {
		    width: 50%;
		    height: 60px;
		    border: none;
		    font-size: 16px;
		    font-weight: bold;
		    color: white;
		    float: left;
		}
		.register-button__area .register-agree__previous[data-v-78d799ef] {
		    background-color: #888888;
		}
		.register-button__area .register-agree__submit[data-v-78d799ef] {
		    background-color: #000000;
		}
		.v--modal-block-scroll {
			overflow: hidden;
			width: 100vw;
		}
		.v--modal-overlay {
			position: fixed;
			box-sizing: border-box;
			left: 0;
			top: 0;
			width: 100%;
			height: 100vh;
			background: rgba(0, 0, 0, 0.2);
			z-index: 999;
			opacity: 1;
		}
		.v--modal-overlay.scrollable {
			height: 100%;
			min-height: 100vh;
			overflow-y: auto;
			-webkit-overflow-scrolling: touch;
		}
		.v--modal-overlay .v--modal-background-click {
			width: 100%;
			height: 100%;
		}
		.v--modal-overlay .v--modal-box {
			position: relative;
			overflow: hidden;
			box-sizing: border-box;
		}
		.v--modal-overlay.scrollable .v--modal-box {
			margin-bottom: 2px;
		}
		.v--modal {
			background-color: white;
			text-align: left;
			border-radius: 3px;
			box-shadow: 0 20px 60px -2px rgba(27, 33, 58, 0.4);
			padding: 0;
		}
		.v--modal.v--modal-fullscreen {
			width: 100vw;
			height: 100vh;
			margin: 0;
			left: 0;
			top: 0;
		}
		.v--modal-top-right {
			display: block;
			position: absolute;
			right: 0;
			top: 0;
		}
		.overlay-fade-enter-active,
		.overlay-fade-leave-active {
			transition: all 0.2s;
		}
		.overlay-fade-enter,
		.overlay-fade-leave-active {
			opacity: 0;
		}
		.nice-modal-fade-enter-active,
		.nice-modal-fade-leave-active {
			transition: all 0.4s;
		}
		.nice-modal-fade-enter,
		.nice-modal-fade-leave-active {
			opacity: 0;
			transform: translateY(-20px);
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
	            	<div data-v-78d799ef="">
						<div data-v-78d799ef="" id="modals-container_temp" style="display:none;">
							<div aria-expanded="true" data-modal="common-plain-text" class="v--modal-overlay">
							    <div class="v--modal-background-click">
							        <div class="v--modal-top-right">
							        </div>
							        <div class="v--modal-box v--modal" style="top: 30%; left: 30%; width: 40%; height: 40%;">
							            <div data-v-30a8b675="" modal="[object Object]">
							                <div data-v-30a8b675="" class="plaintext__container">
							                    <h4 data-v-30a8b675="" class="plaintext__title">약관 동의</h4>
							                    <p data-v-30a8b675="" class="plaintext__content">이용약관과 개인정보 이용 방침에 모두 동의해주세요.</p>
							                </div> 
							                <button data-v-30a8b675="" class="plaintext__submit">확인</button>
							            </div>
							            <!---->
							        </div>
							    </div>
							</div>
						</div>
						<p data-v-78d799ef="" class="register__title">회원가입</p>
						<section data-v-78d799ef="" class="register-status__box">
						    <div data-v-78d799ef="" class="register-status__centered">
							    <i data-v-78d799ef="" class="register-status__icon-1" style="background: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTYuNyA1MS40IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1Ni43IDUxLjQ7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojMDQwMDAwO3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxyZWN0IHg9IjEuOCIgeT0iMS44IiBjbGFzcz0ic3QwIiB3aWR0aD0iNDAuNCIgaGVpZ2h0PSI0Ny42Ii8+Cgk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjE2LjEiIHgyPSIzNS4xIiB5Mj0iMTYuMSIvPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjkiIHkxPSIyNS42IiB4Mj0iMzUuMSIgeTI9IjI1LjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI5IiB5MT0iMzUuMSIgeDI9IjM1LjEiIHkyPSIzNS4xIi8+CgkKCQk8ZWxsaXBzZSB0cmFuc2Zvcm09Im1hdHJpeCg0LjcwNzk3MGUtMDIgLTAuOTk4OSAwLjk5ODkgNC43MDc5NzBlLTAyIDMuNDMzOSA3NC40ODgxKSIgY2xhc3M9InN0MCIgY3g9IjQwLjgiIGN5PSIzNS40IiByeD0iMTQuMSIgcnk9IjE0LjEiLz4KCTxwb2x5bGluZSBjbGFzcz0ic3QwIiBwb2ludHM9IjMzLjUsMzYuMSAzOC43LDQwLjQgNDUuNywzMi42IAkiLz4KPC9nPgo8L3N2Zz4K&quot;) no-repeat;"></i>
								<p data-v-78d799ef="" class="register-status__text-1" style="color: rgb(0, 0, 0);">01. 약관동의</p> 
								<i data-v-78d799ef="" class="register-status__icon-step"></i> 
								<i data-v-78d799ef="" class="register-status__icon-2" style="background: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTQuNSA0NS4zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1NC41IDQ1LjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDpub25lO3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MXtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEuOCIgeTE9IjQzLjUiIHgyPSI1Mi43IiB5Mj0iNDMuNSIvPgoJPHBvbHlnb24gY2xhc3M9InN0MSIgcG9pbnRzPSI1LjMsMzQuNCAxOS42LDM0LjMgNTIuNywxNC41IDQ1LjEsMS44IDEyLDIxLjYgNS4yLDM0LjIgCSIvPgoJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjEyIiB5MT0iMjEuNiIgeDI9IjE5LjYiIHkyPSIzNC4zIi8+CjwvZz4KPC9zdmc+Cg==&quot;) no-repeat;"></i>
								<p data-v-78d799ef="" class="register-status__text-2" style="color: rgb(216, 216, 216);">02. 정보입력</p>
						    </div>
						</section>
						<section data-v-78d799ef="" class="register-agree__container">
						    <div data-v-78d799ef="" class="register-agree__title">
							    <input data-v-78d799ef="" type="checkbox" id="register-agree__check1"> 
							    <label data-v-78d799ef="" for="register-agree__check1"></label> 
							    <span data-v-78d799ef="">정육각 서비스 약관 동의</span>
						    </div>
						    <div data-v-78d799ef="" class="register-agree__content">
							    <iframe data-v-78d799ef="" width="738px" height="6700px" src="https://yookgak.com/website/term-20191015.html" style="box-sizing: content-box;">
							    </iframe>
						    </div>
						    <div data-v-78d799ef="" class="register-agree__title">
							    <input data-v-78d799ef="" type="checkbox" id="register-agree__check2" > 
							    <label data-v-78d799ef="" for="register-agree__check2"></label> 
							    <span data-v-78d799ef="">개인정보 이용 방침</span>
						    </div>
						    <div data-v-78d799ef="" class="register-agree__content">
							    <iframe data-v-78d799ef="" width="738px" height="5100px" src="https://yookgak.com/website/private-20191015.html" style="box-sizing: content-box;">
							    </iframe>
						    </div>
						    <div data-v-78d799ef="" class="register-button__area">
							    <button data-v-78d799ef="" id="goto_main" class="register-agree__previous">이전으로
							    </button> 
							    <button data-v-78d799ef="" id="goto_insert" class="register-agree__submit">동의하기
							    </button>
						    </div>
						</section>
						<!---->
	            	</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
</body>
</html>
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
			
			// 비밀번호 일치 확인
			var pResult = 0;
			
			$("#password_check").click(function(){
				var p1 = document.getElementById("password").value;
				var p2 = document.getElementById("password_confirm").value;
				
			    if( p1 == '') {
		        	alert("비밀번호 미입력");
		        	pResult = 0;
		        } else{
		        	if ( p1 != p2) {
		        		alert("비밀번호 불일치");
			        	pResult = 0; 
					} else {
			        	alert("비밀번호 일치");
			        	pResult = 1; 
					}
		        }
			});
		    
		    $("#submit_button").click(function(){
		    	if( pResult == 1 ) {
			    	document.getElementById('member_insert').submit;
		        } else{
		        	alert("비밀번호 확인 필요");
		        }
			});
			
			$("#goto_register").click(function(){
				// alert('goto_main click');
				location.href = "./../member/memberRegister.jsp" ;
			});			
					    
		});
	</script>
	
	<script>
		$(function() {
			
			
		    
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
		.register-input__container[data-v-78d799ef] {
		  width: 780px;
		  margin-left: auto;
		  margin-right: auto;
		  margin-top: 46px;
		  margin-bottom: 80px;
		}
		.register-input__container .register-input__desc[data-v-78d799ef] {
		    font-size: 15px;
		    line-height: 24px;
		}
		.register-input__container .register-input__box[data-v-78d799ef] {
		    margin-top: 16px;
		    margin-bottom: 34px;
		    width: 778px;
		    height: 413px;
		    border: 1px solid #e1dedf;
		    box-sizing: content-box;
		}
		.register-input__container .register-input__box .register-input__line[data-v-78d799ef] {
		      overflow: hidden;
		      border-bottom: 1px solid #e1dedf;
		}
		.register-input__container .register-input__box .register-input__line .register-input__title[data-v-78d799ef] {
		        float: left;
		        width: 179px;
		        border-right: 1px solid #e1dedf;
		        background-color: #f7f7f7;
		        font-size: 13px;
		        line-height: 68px;
		}
		.register-input__container .register-input__box .register-input__line .register-input__title p[data-v-78d799ef] {
		          margin-left: 29px;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content[data-v-78d799ef] {
		        float: left;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__content-input[data-v-78d799ef] {
		          margin-left: 20px;
		          margin-top: 15px;
		          padding-left: 22px;
		          font-size: 13px;
		          width: 456px;
		          height: 38px;
		          border: 1px solid #e1dedf;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content select[data-v-78d799ef] {
		          margin-left: 20px;
		          margin-top: 15px;
		          font-size: 13px;
		          padding-left: 38px;
		          width: 100px;
		          height: 40px;
		          border: 1px solid #e1dedf;
		          float: left;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__content-phone[data-v-78d799ef] {
		          margin-left: 7px;
		          margin-top: 15px;
		          padding-left: 22px;
		          font-size: 13px;
		          width: 76px;
		          height: 38px;
		          border: 1px solid #e1dedf;
		          float: left;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__content-phonesplit[data-v-78d799ef] {
		          width: 5px;
		          height: 2px;
		          background-color: #e1dedf;
		          margin-top: 34px;
		          margin-left: 7px;
		          float: left;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__content-cert[data-v-78d799ef] {
		          width: 120px;
		          height: 40px;
		          background-color: #f7f7f7;
		          border: 1px solid #d3d3d3;
		          font-size: 12px;
		          font-weight: bold;
		          text-align: center;
		          margin-left: 22px;
		          margin-top: 15px;
		          cursor: default;
		          float: left;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__cert-active[data-v-78d799ef] {
		          background-color: #000000;
		          border: 1px solid #000000;
		          color: white;
		          cursor: pointer;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__cert-time[data-v-78d799ef] {
		          float: left;
		          color: #9b9b9b;
		          font-weight: bold;
		}
		.register-input__container .register-input__box .register-input__line .register-input__content .register-input__cert-time p[data-v-78d799ef] {
		            font-size: 12px;
		            margin-top: 24px;
		            margin-left: 23.5px;
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
					    <div data-v-78d799ef="" id="modals-container">
					    </div>
					    <p data-v-78d799ef="" class="register__title">회원가입</p>
					    <section data-v-78d799ef="" class="register-status__box">
					        <div data-v-78d799ef="" class="register-status__centered">
					        	<i data-v-78d799ef="" class="register-status__icon-1" style="background: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTYuNyA1MS40IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1Ni43IDUxLjQ7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MXtmaWxsOm5vbmU7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPHJlY3QgeD0iMS44IiB5PSIxLjgiIGNsYXNzPSJzdDAiIHdpZHRoPSI0MC40IiBoZWlnaHQ9IjQ3LjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI5IiB5MT0iMTYuMSIgeDI9IjM1LjEiIHkyPSIxNi4xIi8+Cgk8bGluZSBjbGFzcz0ic3QxIiB4MT0iOSIgeTE9IjI1LjYiIHgyPSIzNS4xIiB5Mj0iMjUuNiIvPgoJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjkiIHkxPSIzNS4xIiB4Mj0iMzUuMSIgeTI9IjM1LjEiLz4KCTxjaXJjbGUgY2xhc3M9InN0MCIgY3g9IjQwLjgiIGN5PSIzNS40IiByPSIxNC4xIi8+Cgk8cG9seWxpbmUgY2xhc3M9InN0MSIgcG9pbnRzPSIzMy41LDM2LjEgMzguNyw0MC40IDQ1LjcsMzIuNiAJIi8+CjwvZz4KPC9zdmc+Cg==&quot;) no-repeat;"></i>
					            <p data-v-78d799ef="" class="register-status__text-1" style="color: rgb(216, 216, 216);">01. 약관동의</p> <i data-v-78d799ef="" class="register-status__icon-step"></i> 
					            <i data-v-78d799ef="" class="register-status__icon-2" style="background: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTQuNSA0NS4zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1NC41IDQ1LjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojMDQwMDAwO3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIxLjgiIHkxPSI0My41IiB4Mj0iNTIuNyIgeTI9IjQzLjUiLz4KCTxwb2x5Z29uIGNsYXNzPSJzdDAiIHBvaW50cz0iNS4zLDM0LjQgMTkuNiwzNC4zIDUyLjcsMTQuNSA0NS4xLDEuOCAxMiwyMS42IDUuMiwzNC4yIAkiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIxMiIgeTE9IjIxLjYiIHgyPSIxOS42IiB5Mj0iMzQuMyIvPgo8L2c+Cjwvc3ZnPgo=&quot;) no-repeat;"></i>
					            <p data-v-78d799ef="" class="register-status__text-2" style="color: rgb(0, 0, 0);">02. 정보입력</p>
					        </div>
					    </section>
					    <!---->
					    <section data-v-78d799ef="" class="register-input__container">
					        <p data-v-78d799ef="" class="register-input__desc">가입정보 입력</p>
					        
					        <form action="<%=yesForm%>" method="post" id="member_insert">
                   				<input type="hidden" name="command" value="meInsert">
	                           			
						        <div data-v-78d799ef="" class="register-input__box">
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">아이디</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="text" name="id" class="register-input__content-input">
						                </div>
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">비밀번호</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="password" id="password" name="password" class="register-input__content-input">
						                </div>
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">비밀번호 확인</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="password" id="password_confirm" name="password_confirm" class="register-input__content-input">
						                </div>
						                <input type="button" id="password_check" value="비밀번호 체크" style="margin-top: 21px; margin-left: 10px;">
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">이름</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="text" name="name" class="register-input__content-input">
						                </div>
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">성별</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<select data-v-78d799ef="" name="gender">
						                        <option data-v-78d799ef="" value="남자">남자</option>
						                        <option data-v-78d799ef="" value="여자">여자</option>
						                    </select>
						                </div>
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">생일</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="date" name="birth" class="register-input__content-input">
						                </div>
						            </div>
						            
						            <!-- 
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">휴대폰번호</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<select data-v-78d799ef="">
						                        <option data-v-78d799ef="" value="010">010</option>
						                        <option data-v-78d799ef="" value="011">011</option>
						                        <option data-v-78d799ef="" value="016">016</option>
						                        <option data-v-78d799ef="" value="017">017</option>
						                        <option data-v-78d799ef="" value="019">019</option>
						                    </select>
						                    <div data-v-78d799ef="" class="register-input__content-phonesplit">
						                    </div> 
						                    <input data-v-78d799ef="" type="tel" maxlength="4" class="register-input__content-phone">
						                    <div data-v-78d799ef="" class="register-input__content-phonesplit">
						                    </div> 
						                    <input data-v-78d799ef="" type="tel" maxlength="4" class="register-input__content-phone"> 
						                    <button data-v-78d799ef="" class="register-input__content-cert">인증번호 받기
						                    </button>
						                </div>
						            </div>
						            <div data-v-78d799ef="" class="register-input__line">
						                <div data-v-78d799ef="" class="register-input__title">
						                    <p data-v-78d799ef="">인증번호</p>
						                </div>
						                <div data-v-78d799ef="" class="register-input__content">
						                	<input data-v-78d799ef="" type="text" class="register-input__content-input">
						                </div>
						            </div>
						            -->
						             
						        </div>
						        <div data-v-78d799ef="" class="register-button__area">
							        <button data-v-78d799ef="" id="goto_register" class="register-agree__previous">이전으로</button> 
							        <button data-v-78d799ef="" id="submit_button" class="register-agree__submit">가입하기
							        </button>
						        </div>
					        </form>
					        
					    </section>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common_yj/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<script>
		$(function() {
			$('.detail-top__option-dropdown-content').hide();
			$('#detail-top__option-dropdown-btn').click(function(){
				$('.detail-top__option-dropdown-content').slideToggle();
			});
			$('#clicktest1').click(function(){
				document.getElementById('detail-top__option-dropdown-btn').innerText = document.getElementById('clicktest1').innerText;
				$('.detail-top__option-dropdown-content').slideToggle();
			});
			$('#clicktest2').click(function(){
				document.getElementById('detail-top__option-dropdown-btn').innerText = document.getElementById('clicktest2').innerText;
				$('.detail-top__option-dropdown-content').slideToggle();
			});
			$('#clicktest3').click(function(){
				document.getElementById('detail-top__option-dropdown-btn').innerText = document.getElementById('clicktest3').innerText;
				$('.detail-top__option-dropdown-content').slideToggle();
			});
			
		});
	</script>
	<script>
		$(function() {			
			$('.detail-info__container').hide();
			$('#buttontest3').click(function(){
				
				if($("#buttontest3").hasClass("detail-tab__active")){
					
	            } else{
	                $("#buttontest1").removeClass("detail-tab__active");
	                $("#buttontest3").addClass("detail-tab__active");
					$('.detail-desc__container').hide();
					$('.detail-info__container').show();
	            }
				
			});
			$('#buttontest1').click(function(){
				
				if($("#buttontest1").hasClass("detail-tab__active")){
					
	            } else{
	                $("#buttontest3").removeClass("detail-tab__active");
	                $("#buttontest1").addClass("detail-tab__active");
					$('.detail-info__container').hide();
					$('.detail-desc__container').show();
	            }
				
			});
		});
	</script>
	<script>
		$(function() {
			let mynum = 0;
			mynum = document.getElementById('counternumber').innerText * 1;
			
			$('#counterminus').click(function(){
				mynum = mynum - 1;
				if (mynum==0) {
					mynum=1;
				}
				document.getElementById('counternumber').innerText = mynum;
			});
			
			$('#counterplus').click(function(){
				mynum = mynum + 1;
				document.getElementById('counternumber').innerText = mynum;
				
			});
			
			$("#goto_mycart_button").click(function(){
				// alert('goto_mycart_button click');
				location.href = "mycartList1.jsp?pQty=" + mynum ;
			});

		});
		function gotocart(){
			var sel = parseInt($('#counternumber').text()); 
			var qty = document.querySelector('input[name="qty"]');
			qty.value = sel;
			document.myform.submit();
		};
	</script>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		a{text-decoration:none; color:inherit;}
		a:hover,a:active{text-decoration: none;}
	
		.detail-top__wrap .detail-top__container[data-v-5a97542d] {
		  width: 980px;
		  margin-left: auto;
		  margin-right: auto;
		}
		img[data-v-5a97542d], video[data-v-5a97542d] {
		  display: block;
		}
		.detail-top__wrap[data-v-5a97542d] {
		  width: 100%;
		  background-color: #1c1c1c;
		  padding-bottom: 50px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data[data-v-5a97542d] {
		    overflow: hidden;
		    padding-top: 60px;
		    display: table;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__img[data-v-5a97542d] {
		      margin-left: 30px;
		      margin-right: 70px;
		      float: left;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content[data-v-5a97542d] {
		      display: table-cell;
		      vertical-align: middle;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content h2[data-v-5a97542d] {
		        font-size: 28px;
		        font-weight: 700;
		        line-height: 41px;
		        color: white;
		        word-break: keep-all;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-standard[data-v-5a97542d] {
		        font-size: 16px;
		        color: #9b9b9b;
		        margin-top: 20px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-price[data-v-5a97542d] {
		        font-size: 24px;
		        line-height: 33px;
		        color: white;
		        margin-top: 6px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-split[data-v-5a97542d] {
		        width: 380px;
		        height: 1px;
		        background-color: #4a4a4a;
		        margin-top: 26px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option[data-v-5a97542d] {
		        height: 52px;
		        margin-top: 29px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-text[data-v-5a97542d] {
		          float: left;
		          font-size: 18px;
		          line-height: 33px;
		          color: white;
		          margin-top: 9px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown[data-v-5a97542d] {
		          width: 317px;
		          border: 1px solid #7c7c7c;
		          margin-left: 27px;
		          position: relative;
		          z-index: 1;
		          float: right;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown .detail-top__option-dropdown-btn[data-v-5a97542d] {
		            width: 317px;
		            height: 50px;
		            font-size: 16px;
		            position: relative;
		            background-color: #1c1c1c;
		            color: white;
		            border: none;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown .detail-top__option-dropdown-btn #detail-top__option-dropdown-arrow[data-v-5a97542d] {
		              display: block;
		              width: 13px;
		              height: 8px;
		              background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTMgNy41IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxMyA3LjU7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDpub25lO3N0cm9rZTojOTc5Nzk3O3N0cm9rZS13aWR0aDoyO3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPGc+CgkJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEiIHkxPSIxIiB4Mj0iNi41IiB5Mj0iNi41Ii8+CgkJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEyIiB5MT0iMSIgeDI9IjYuNSIgeTI9IjYuNSIvPgoJPC9nPgo8L2c+Cjwvc3ZnPgo=) no-repeat;
		              position: absolute;
		              bottom: 19px;
		              right: 18px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown .detail-top__option-dropdown-content[data-v-5a97542d] {
		            background-color: #1c1c1c;
		            z-index: 1;
		            position: absolute;
		            width: 317px;
		            border-left: 1px solid #7c7c7c;
		            border-right: 1px solid #7c7c7c;
		            border-bottom: 1px solid #7c7c7c;
		            margin-left: -1px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown .detail-top__option-dropdown-content .detail-top__option-dropdown-list[data-v-5a97542d] {
		              height: 50px;
		              line-height: 50px;
		              font-size: 16px;
		              text-align: center;
		              color: white;
		              cursor: pointer;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-option .detail-top__option-dropdown .detail-top__option-dropdown-content .detail-top__option-dropdown-list[data-v-5a97542d]:hover {
		                background-color: white;
		                color: black;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count[data-v-5a97542d] {
		        margin-top: 19px;
		        overflow: hidden;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-text[data-v-5a97542d] {
		          font-size: 18px;
		          line-height: 33px;
		          color: white;
		          float: left;
		          margin-top: 9px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter[data-v-5a97542d] {
		          overflow: hidden;
		          text-align: center;
		          float: right;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter .detail-top__count-counter-centered[data-v-5a97542d] {
		            display: inline-block;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter .detail-top__count-counter-centered .detail-top__count-counter-btn[data-v-5a97542d] {
		              width: 50px;
		              height: 50px;
		              border: 1px solid #7c7c7c;
		              background-color: #1c1c1c;
		              display: block;
		              float: left;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter .detail-top__count-counter-centered .detail-top__count-counter-btn .detail-top__count-counter-minus[data-v-5a97542d] {
		                width: 21px;
		                height: 3px;
		                display: inline-block;
		                background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTIgMiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMTIgMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOm5vbmU7c3Ryb2tlOiM5QjlCOUI7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPGc+Cgk8Zz4KCQk8bGluZSBjbGFzcz0ic3QwIiB4MT0iMSIgeTE9IjEiIHgyPSIxMSIgeTI9IjEiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K) no-repeat;
		                background-size: cover;
		                position: relative;
		                top: -4px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter .detail-top__count-counter-centered .detail-top__count-counter-btn .detail-top__count-counter-plus[data-v-5a97542d] {
		                width: 18px;
		                height: 18px;
		                display: inline-block;
		                background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTIgMTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEyIDEyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6bm9uZTtzdHJva2U6IzlCOUI5QjtzdHJva2Utd2lkdGg6MjtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2IiB5MT0iMSIgeDI9IjYiIHkyPSIxMSIvPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEiIHkxPSI2IiB4Mj0iMTEiIHkyPSI2Ii8+CjwvZz4KPC9zdmc+Cg==) no-repeat;
		                background-size: cover;
		                position: relative;
		                top: 2px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-count .detail-top__count-counter .detail-top__count-counter-centered .detail-top__count-counter-number[data-v-5a97542d] {
		              width: 219px;
		              height: 48px;
		              border-top: 1px solid #7c7c7c;
		              border-bottom: 1px solid #7c7c7c;
		              line-height: 48px;
		              font-size: 16px;
		              float: left;
		              color: white;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-btn[data-v-5a97542d] {
		        margin-top: 40px;
		        overflow: hidden;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-btn .detail-top__btn-button[data-v-5a97542d]{
			width: 180px;
		    height: 60px;
		    float: left;
		    display: block;
		    border: none;
		    font-size: 16px;
		    font-weight: bold;
		    color: white;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-btn .btn-button-gray[data-v-5a97542d]{
			background-color: #888888;
    		margin-right: 20px;
		}
		.detail-top__wrap .detail-top__container .detail-top__data .detail-top__content .detail-top__content-btn .btn-button-red[data-v-5a97542d]{
			background-color: #d0021b;
		}
		.detail-tab__container[data-v-5a97542d]{
			width: 100%;
		    height: 109px;
		    text-align: center;
		}
		.detail-tab__container .detail-tab__centered[data-v-5a97542d]{
		    display: inline-block;
		}
		.detail-tab__container .detail-tab__centered .detail-tab__text[data-v-5a97542d]{
			float: left;
		    font-size: 18px;
		    font-weight: bold;
		    line-height: 19px;
		    margin-right: 63.5px;
		    margin-top: 45px;
		    color: #c2c2c2;
		    cursor: pointer;
		}
		.detail-tab__container .detail-tab__centered .detail-tab__active[data-v-5a97542d]{
			color: black;
    		border-bottom: 1px solid black;
		}
		.detail-tab__container .detail-tab__centered .detail-tab__text[data-v-5a97542d]:nth-last-child(1){
		    margin-right: 0px;
		}
		.detail-desc__container[data-v-5a97542d]{
			border-top: 1px solid #979797;
		}
		.detail-desc__container .detail-desc__display .detail-desc__display-title[data-v-5a97542d]{
			font-size: 24px;
		    letter-spacing: -2px;
		    text-align: center;
		    white-space: pre-line;
		}
		.detail-desc__container .detail-desc__display .detail-desc__display-area[data-v-5a97542d]{
			margin-top: 16px;
		    margin-bottom: 16px;
		    width: 100%;
		    height: 121px;
		    background-color: #000000;
		    text-align: center;
		}
		.detail-desc__container .detail-desc__display .detail-desc__display-area .detail-desc__display-centered[data-v-5a97542d]{
			display: inline-block;
    		overflow: hidden;
		}
		.detail-desc__container .detail-desc__display .detail-desc__display-area .detail-desc__display-centered .detail-desc__display-timebox[data-v-5a97542d]{
			width: 62px;
		    height: 81px;
		    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MiIgaGVpZ2h0PSI4MSIgdmlld0JveD0iMCAwIDYyIDgxIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iI0U1RTVFNSIgZD0iTTQuNDgyIDBoNTMuMDM2QzU5Ljk5MyAwIDYyIDIuMDA3IDYyIDQuNDgydjM0LjM0N2MwIDEuMjM4LTEuMDAzIDIuMjQxLTIuMjQxIDIuMjQxSDIuMjQxQzEuMDAzIDQxLjA3IDAgNDAuMDY3IDAgMzguODNWNC40ODFDMCAyLjAwNyAyLjAwNyAwIDQuNDgyIDB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzIzIC0xMDYpIHRyYW5zbGF0ZSg3MjMgMTA2KSIvPgogICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTIuMjQxIDQxLjA3aDU3LjUxOGMxLjIzOCAwIDIuMjQxIDEuMDA0IDIuMjQxIDIuMjQxdjMzLjIwN0M2MiA3OC45OTMgNTkuOTkzIDgxIDU3LjUxOCA4MUg0LjQ4MkMyLjAwNyA4MSAwIDc4Ljk5MyAwIDc2LjUxOFY0My4zMTFjMC0xLjIzNyAxLjAwMy0yLjI0IDIuMjQxLTIuMjR6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzIzIC0xMDYpIHRyYW5zbGF0ZSg3MjMgMTA2KSIvPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K) no-repeat;
		    background-size: cover;
		    float: left;
		    margin-right: 8px;
		    font-size: 60px;
		    line-height: 81px;
		    color: #333333;
		    font-weight: bold;
		    margin-top: 20px;
		}
		.detail-desc__container .detail-desc__display .detail-desc__display-area .detail-desc__display-centered .detail-desc__display-timetext[data-v-5a97542d]{
			float: left;
		    font-size: 33px;
		    font-weight: bold;
		    margin-top: 54px;
		    color: #f5f4f4;
		}
		.detail-desc__container .detail-desc__display p[data-v-5a97542d]{
			font-size: 22px;
		    text-align: center;
		    letter-spacing: -1.41px;
		    margin-top: 16px;
		}
		.app__desktop footer .footer-main .footer-main__cs h6{
			font-size: 14px;
		}
		.app__desktop footer .footer-main .footer-main__cs h3{
		    font-size: 24px;
    		margin-top: -9px;
		}
		.detail-top__option-dropdown{
			box-sizing: content-box;
		}
		.detail-top__option-dropdown-content{
			box-sizing: content-box;		
		}
		.detail-top__count-counter-number{
			box-sizing: content-box;	
		}
		.detail-info__container[data-v-5a97542d]{
			width: 1180px;
		    margin-left: auto;
		    margin-right: auto;
		    margin-top: 43px;
		}
		.detail-info__container h3[data-v-5a97542d]{
			font-size: 32px;
    		font-weight: bold;
		}
		.detail-info__container .detail-info__split[data-v-5a97542d]{
			width: 100%;
		    height: 1px;
		    margin-top: 21px;
		    background-color: #4a4a4a;
		}
		.detail-info__container .detail-info__basic-table[data-v-5a97542d]{
			overflow: hidden;
		    position: relative;
		    border-bottom: 1px solid #aaaaaa;
		    padding-bottom: 20px;
		}
		.detail-info__container .detail-info__basic-table .table__box .detail-info__basic-list[data-v-5a97542d]{
			box-sizing: content-box;
			padding-top: 8px;
		    overflow: hidden;
		    float: left;
		    width: 590px;
		}
		.detail-info__container .detail-info__basic-table .table__box .detail-info__basic-list li[data-v-5a97542d]{
			box-sizing: content-box;
			overflow: hidden;
		}
		.detail-info__container .detail-info__basic-table .table__box .detail-info__basic-list li p[data-v-5a97542d]{
			overflow: hidden;
		    font-size: 16px;
		    line-height: 30px;
		    float: left;
		}
		.detail-info__container .detail-info__basic-table .table__box .detail-info__basic-list li p[data-v-5a97542d]:nth-child(1){
			box-sizing: content-box;
			width: 150px;
		}
		.detail-info__container .detail-info__basic-table .table__box .detail-info__basic-list li p[data-v-5a97542d]:nth-child(2){
			box-sizing: content-box;
			margin-left: 32px;
    		width: 408px;
		}
		.detail-info__container .detail-delivery__title[data-v-5a97542d]{
			margin-top: 81px;
		    display: -webkit-box;
		    display: -ms-flexbox;
		    display: flex;
		    -webkit-box-align: center;
		    -ms-flex-align: center;
		    align-items: center;
		}
		.detail-info__container .detail-delivery__title p[data-v-5a97542d]{
			margin-left: 16px;
		    font-size: 14px;
		    line-height: 30px;
		    color: #4bb8ce;
		    text-decoration: underline;
		    cursor: pointer;
		}
		.detail-info__container .detail-delivery__container[data-v-5a97542d]{
			display: -webkit-box;
		    display: -ms-flexbox;
		    display: flex;
		    -webkit-box-pack: justify;
		    -ms-flex-pack: justify;
		    justify-content: space-between;
		    margin-top: 40px;
		    margin-bottom: 60px;
		}
		.detail-info__container .detail-delivery__container article h5[data-v-5a97542d]{
			font-size: 21px;
   			color: #212121;
		    font-weight: 700;
		}
		
		.detail-info__container .detail-delivery__container article .detail-delivery__box[data-v-5a97542d]{
			margin-top: 20px;
		    width: 574px;
		    height: 244px;
		    background-color: #fafafa;
		}
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul[data-v-5a97542d]{
			padding-top: 24px;
    		padding-left: 28px;
		}
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul li[data-v-5a97542d]{
			margin-bottom: 20px;
		    display: -webkit-box;
		    display: -ms-flexbox;
		    display: flex;
		}
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul li h6[data-v-5a97542d]{
			width: 80px;
		    font-size: 16px;
		    line-height: 26px;
		    color: #212121;
		    font-weight: 700;
		}
		
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul li div[data-v-5a97542d]{
			margin-left: 16px;
		    line-height: 26px;
		    width: 422px;
		}
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul li div sub[data-v-5a97542d]{
			font-size: 14px;
			line-height: 26px;
		    color: #9e9e9e;
		    display: block;
		}
		.detail-info__container .detail-delivery__container article .detail-delivery__box ul li div p[data-v-5a97542d]{
			font-size: 14px;
			line-height: 26px;
    		color: #424242;
		}
		.detail-info__container .detail-info__refund[data-v-5a97542d]{
			margin-top: 30px;
		    font-size: 18px;
		    color: #252525;
		    margin-bottom: 100px;
		}
		
	</style>
	
</head>

<body style="overflow: auto;">
<form name="myform" action="<%=yesForm%>" method="post">
	<input type="hidden" name="command" value="maInsert"> 
	<input type="hidden" name="num" value="${requestScope.bean.num}"> 
	<input type="hidden" name="qty" value=""> 
</form>
	<div id="app">
    	<div id="modals-container">
    	</div>
    	<div class="app__desktop">
        	<div class="app__desktop-scroll">
            	<div>
                	<!--
                	-->
                	<jsp:include page="./../common_yj/jecommon.jsp"></jsp:include>
	            	<div data-v-5a97542d="">
	                	<div data-v-5a97542d="" id="modals-container">
	                	</div>
	                	<%-- 상세페이지 데이터베이스와 연동 작업 한부분 start --%>
	               		<section data-v-5a97542d="" class="detail-top__wrap">
	                   		<div data-v-5a97542d="" class="detail-top__container">
	                       		<div data-v-5a97542d="" class="detail-top__data">
		                            <picture data-v-5a97542d="">
		                            	<img data-v-5a97542d="" src="${applicationScope.realPath}/${requestScope.bean.image}" width="500px" height="500px" class="detail-top__img">
		                            </picture>
	                           		<div data-v-5a97542d="" class="detail-top__content">
	                               		<h2 data-v-5a97542d="">${requestScope.bean.name}</h2>
		                                <p data-v-5a97542d="" class="detail-top__content-standard">
		                                	<c:set var="price" value="${requestScope.bean.price}" />
		                                	<c:set var="gram" value="${requestScope.bean.gram}" />
		                                	<c:choose>
											<c:when test="${requestScope.bean.category == 'Milk'}">100ml당 <fmt:formatNumber pattern="#,###,###"  value="${price/(gram/100)}"/>원</c:when>
											<c:when test="${requestScope.bean.category == 'Egg'}">1구당 <fmt:formatNumber pattern="#,###,###"  value="${price/gram}"/>원</c:when>
											<c:otherwise>100g당 <fmt:formatNumber pattern="#,###,###"  value="${price/(gram/100)}"/>원</c:otherwise>
											</c:choose>
	                                	</p>
		                                <c:choose>
										<c:when test="${requestScope.bean.category == 'Milk'}"><p data-v-5a97542d="" class="detail-top__content-price">기준가 <fmt:formatNumber pattern="#,###,###"  value="${requestScope.bean.price}"/>원 (${requestScope.bean.gram}ml)</c:when>
										<c:when test="${requestScope.bean.category == 'Egg'}"><p data-v-5a97542d="" class="detail-top__content-price">기준가 <fmt:formatNumber pattern="#,###,###"  value="${requestScope.bean.price}"/>원 (${requestScope.bean.gram}구)</p></c:when>
										<c:otherwise><p data-v-5a97542d="" class="detail-top__content-price">기준가 <fmt:formatNumber pattern="#,###,###"  value="${requestScope.bean.price}"/>원 (${requestScope.bean.gram}g)
										</c:otherwise>
										</c:choose>
	                               		<div data-v-5a97542d="" class="detail-top__content-split">
	                               		</div>
	                          			<div data-v-5a97542d="" class="detail-top__content-option">
	                              			<p data-v-5a97542d="" class="detail-top__option-text"></p>
	                                   		<div data-v-5a97542d="" class="detail-top__option-dropdown">
			                                    <button data-v-5a97542d id="detail-top__option-dropdown-btn" class="detail-top__option-dropdown-btn">
			                                    <c:choose>
			                                    	<c:when test="${requestScope.bean.category == 'Egg'}">
			                                    		갯수를 선택하세요
		                                    		</c:when>
		                                    		<c:otherwise>
			                                    		중량을 선택하세요
		                                    		</c:otherwise>
	                                    		</c:choose>
													<i data-v-5a97542d id="detail-top__option-dropdown-arrow"></i>
												</button>
												<!-- 
												 -->
												<div data-v-5a97542d class="detail-top__option-dropdown-content">
													<div data-v-5a97542d class="detail-top__option-dropdown-list">
														<div data-v-5a97542d id="clicktest1" class="clicktest1">
																<c:choose>
																	<c:when test="${requestScope.bean.category == 'Egg'}">
																		${requestScope.bean.gram}개
																	</c:when>
																	<c:otherwise>
																		${requestScope.bean.gram}g
																	</c:otherwise>
																</c:choose>
														</div>
													</div>
												</div>
	                                   		</div>
										</div>
	                               		<div data-v-5a97542d="" class="detail-top__content-count">
		                                    <p data-v-5a97542d="" class="detail-top__count-text">수량</p>
		                                    <div data-v-5a97542d="" class="detail-top__count-counter">
		                                        <div data-v-5a97542d="" class="detail-top__count-counter-centered">
			                                        <button data-v-5a97542d="" id="counterminus" class="detail-top__count-counter-btn">
			                                        	<i data-v-5a97542d="" class="detail-top__count-counter-minus"></i>
			                                        </button>
		                                            <div data-v-5a97542d="" id="counternumber" class="detail-top__count-counter-number">1
		                                            </div> 
		                                            <button data-v-5a97542d="" id="counterplus" class="detail-top__count-counter-btn">
		                                            	<i data-v-5a97542d="" class="detail-top__count-counter-plus"></i>
		                                            </button>
		                                        </div>
		                                    </div>
	                               		</div>
	                               		<div data-v-5a97542d="" class="detail-top__content-btn">
	                               		<button data-v-5a97542d="" id="goto_mycart_button" class="detail-top__btn-button btn-button-gray">바로구매
	                               		</button> 
	                               		<button data-v-5a97542d="" id="input_mycart_button" class="detail-top__btn-button btn-button-red"
	                               		onclick="gotocart();">장바구니
	                               		</button>
	                                	</div>
	                            	</div>
	                        	</div>
	                    	</div>
	               		</section>
		                <div data-v-5a97542d="" class="detail-tab__container">
		                    <div data-v-5a97542d="" class="detail-tab__centered">
		                        <div data-v-5a97542d="" id="buttontest1" class="detail-tab__text detail-tab__active">상품설명</div>
		                        <div data-v-5a97542d="" class="detail-tab__text">상품리뷰</div>
		                        <div data-v-5a97542d="" id="buttontest3" class="detail-tab__text">상품정보안내</div>
		                    </div>
		                </div>
		                <section data-v-5a97542d="" id="containertest1" class="detail-desc__container">
		                    <div data-v-5a97542d="">
		                        <div data-v-5a97542d=""><img data-v-5a97542d="" src="https://jeongyookgak-commerce.s3.ap-northeast-2.amazonaws.com/jyg-custom-seoul-app/frontend/descriptions/web/porkbelly-fresh1.png" width="100%" style="min-width: 1180px;">
		                            <!---->
		                            <!---->
		                            <div data-v-5a97542d="">
		                                <!---->
		                            </div>
		                        </div>
		                        <div data-v-5a97542d="">
		                            <!---->
		                            <!---->
		                            <!---->
		                            <div data-v-5a97542d="">
		                                <div data-v-5a97542d="" class="detail-desc__display">
		                                    <div data-v-5a97542d="">
		                                        <div data-v-5a97542d="" class="detail-desc__display-title">내일 받으실 삼겹살의 <b><b>도축일</b></b>을 확인하세요.</div>
		                                        <article data-v-5a97542d="" class="detail-desc__display-area">
		                                            <div data-v-5a97542d="" class="detail-desc__display-centered">
		                                                <div data-v-5a97542d="" class="detail-desc__display-timebox">0</div>
		                                                <div data-v-5a97542d="" class="detail-desc__display-timebox">4</div>
		                                                <p data-v-5a97542d="" class="detail-desc__display-timetext" style="margin-right: 16px;">월</p>
		                                                <div data-v-5a97542d="" class="detail-desc__display-timebox">0</div>
		                                                <div data-v-5a97542d="" class="detail-desc__display-timebox">1</div>
		                                                <p data-v-5a97542d="" class="detail-desc__display-timetext">일
		                                                    <!---->
		                                                </p>
		                                            </div>
		                                        </article>
		                                        <!---->
		                                        <p data-v-5a97542d="">* 당일배송 기준</p>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        <div data-v-5a97542d=""><img data-v-5a97542d="" src="https://jeongyookgak-commerce.s3.ap-northeast-2.amazonaws.com/jyg-custom-seoul-app/frontend/descriptions/web/porkbelly-fresh2.png" width="100%" style="min-width: 1180px;">
		                            <!---->
		                            <!---->
		                            <div data-v-5a97542d="">
		                                <!---->
		                            </div>
		                        </div>
		                        <div data-v-5a97542d=""><img data-v-5a97542d="" src="https://jeongyookgak-commerce.s3.ap-northeast-2.amazonaws.com/jyg-custom-seoul-app/frontend/descriptions/web/porkfresh.png" width="100%" style="min-width: 1180px;">
		                            <!---->
		                            <!---->
		                            <div data-v-5a97542d="">
		                                <!---->
		                            </div>
		                        </div>
		                    </div>
		                </section>
		                <!---->
		                <section data-v-5a97542d="" id="containertest3" class="detail-info__container" style="">
						    <article data-v-5a97542d="" class="detail-info__basic">
						        <h3 data-v-5a97542d="">상품 기본정보</h3>
						        <div data-v-5a97542d="" class="detail-info__split"></div>
						        <div data-v-5a97542d="">
						            <div data-v-5a97542d="" class="detail-info__basic-table">
						                <div data-v-5a97542d="" class="table__box">
						                    <ul data-v-5a97542d="" class="detail-info__basic-list">
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·품목명</p>
						                            <p data-v-5a97542d="">초신선 돼지 삼겹살</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·내용량</p>
						                            <p data-v-5a97542d="">중량 600g, 실중량은 제품에 별도 표기</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·생산자 및 소재지</p>
						                            <p data-v-5a97542d="">주식회사 정육각 l F1 : 경기도 성남시 중원구 순환로 212, 1층, F2 : 경기도 김포시 고촌읍 아라육로57번길 126, 4층 일부</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·원산지</p>
						                            <p data-v-5a97542d="">국내산</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·유통기한</p>
						                            <p data-v-5a97542d="">제품에 별도 표기</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·이력관리대상축산물 유무</p>
						                            <p data-v-5a97542d="">이력관리대상, 이력번호는 제품에 별도 표기</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·제품구성</p>
						                            <p data-v-5a97542d="">돼지고기 삼겹살 (국내산) 100%</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·보관방법</p>
						                            <p data-v-5a97542d="">-2~10℃ 냉장 보관</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·소비자안전을 위한 주의사항</p>
						                            <p data-v-5a97542d="">부정불량식품 신고 국번 없이 1399</p>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <p data-v-5a97542d="">·소비자상담 전화</p>
						                            <p data-v-5a97542d="">1800 - 0658</p>
						                        </li>
						                    </ul>
						                </div>
						            </div>
						        </div>
						        <div data-v-5a97542d="" class="detail-delivery__title">
						            <h3 data-v-5a97542d="">배송 정보</h3>
						            <p data-v-5a97542d="">자세히 보기 &gt;</p>
						        </div>
						        <div data-v-5a97542d="" class="detail-info__split"></div>
						        <div data-v-5a97542d="" class="detail-delivery__container">
						            <article data-v-5a97542d="">
						                <h5 data-v-5a97542d="">배송 방법</h5>
						                <div data-v-5a97542d="" class="detail-delivery__box">
						                    <ul data-v-5a97542d="">
						                        <li data-v-5a97542d="">
						                            <h6 data-v-5a97542d="">당일배송</h6>
						                            <div data-v-5a97542d=""><sub data-v-5a97542d="">서울, 경기 (일부)</sub>
						                                <p data-v-5a97542d="">낮 12시까지 주문, 오후 7시 전 도착 (월~금)</p>
						                            </div>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <h6 data-v-5a97542d="">새벽배송</h6>
						                            <div data-v-5a97542d=""><sub data-v-5a97542d="">수도권, 충청 (일부)</sub>
						                                <p data-v-5a97542d="">오후 8시까지 주문, 다음 날 오전 7시 전 도착 (화~토)</p>
						                            </div>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <h6 data-v-5a97542d="">택배배송</h6>
						                            <div data-v-5a97542d=""><sub data-v-5a97542d="">그 외 지역</sub>
						                                <p data-v-5a97542d="">오후 8시까지 주문, 다음 날 오후 전 도착 (화~토)</p>
						                            </div>
						                        </li>
						                    </ul>
						                </div>
						            </article>
						            <article data-v-5a97542d="">
						                <h5 data-v-5a97542d="">배송비 혜택</h5>
						                <div data-v-5a97542d="" class="detail-delivery__box">
						                    <ul data-v-5a97542d="">
						                        <li data-v-5a97542d="">
						                            <h6 data-v-5a97542d="">신선할인</h6>
						                            <div data-v-5a97542d="">
						                                <p data-v-5a97542d="">상품을 추가하실 때 마다 배송비가 10%, 30%, 60%,100% 비율로<br data-v-5a97542d="">
						                                    할인됩니다. 총 5개 이상 담으시면 배송비 없이 상품을 받아보실 수<br data-v-5a97542d="">
						                                    있습니다. 우유 상품은 신선할인 대상에서 제외됩니다.</p>
						                            </div>
						                        </li>
						                        <li data-v-5a97542d="">
						                            <h6 data-v-5a97542d="">신선플랜</h6>
						                            <div data-v-5a97542d="">
						                                <p data-v-5a97542d="">한 번 배송비 (3,500원)에 1달 동안 4번 무료배송 받으실 수 있는 정육각의 배송 서비스입니다.</p>
						                            </div>
						                        </li>
						                    </ul>
						                </div>
						            </article>
						        </div>
						        <h3 data-v-5a97542d="">교환/환불 안내</h3>
						        <div data-v-5a97542d="" class="detail-info__split"></div>
						        <p data-v-5a97542d="" class="detail-info__refund">- 신선식품이기 때문에 단순 변심으로 인한 개인적인 사유로는 교환 및 환불이 불가합니다.<br data-v-5a97542d=""><br data-v-5a97542d="">
						            - 상품의 변질, 이물질 발견, 아이스박스 및 아이스팩이 파손되어 배송될 경우<br data-v-5a97542d="">&nbsp;&nbsp;&nbsp;고객센터(1800-0658)로 전화주시면 곧바로 교환/환불 해드리겠습니다.<br data-v-5a97542d=""><br data-v-5a97542d="">
						            - 고객센터 운영 시간은 평일 오전 8시 30분-5시 30분이며, 운영 시간 이외에는 전화 문의가 어렵습니다.<br data-v-5a97542d="">&nbsp;&nbsp;&nbsp;고객센터 1:1 문의 혹은 카카오톡 플러스친구 @정육각으로 사진과 함께 내용을 적어 보내주시면<br data-v-5a97542d="">&nbsp;&nbsp;&nbsp;담당자가 확인 후 빠르게 처리 도와드리겠습니다.</p>
						    </article>
						</section>
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
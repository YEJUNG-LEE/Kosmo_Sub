<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Cache-control"
	content="no-cache, no-store, must-revalidate">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<link rel="icon" href="https://yookgak.com/website/favicon16.png"
	sizes="16x16">
<link rel="icon" href="https://yookgak.com/website/favicon32.png"
	sizes="32x32">
<link rel="icon" href="https://yookgak.com/website/favicon192.png"
	sizes="192x192">
<link href="aaaaaa.css" rel="stylesheet">
<style type="text/css">
.vue-modal-resizer {
	display: block;
	overflow: hidden;
	position: absolute;
	width: 12px;
	height: 12px;
	right: 0;
	bottom: 0;
	z-index: 9999999;
	background: transparent;
	cursor: se-resize;
}

.vue-modal-resizer::after {
	display: block;
	position: absolute;
	content: '';
	background: transparent;
	left: 0;
	top: 0;
	width: 0;
	height: 0;
	border-bottom: 10px solid #ddd;
	border-left: 10px solid transparent;
}

.vue-modal-resizer.clicked::after {
	border-bottom: 10px solid #369be9;
}
</style>
<style type="text/css">
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

.overlay-fade-enter-active, .overlay-fade-leave-active {
	transition: all 0.2s;
}

.overlay-fade-enter, .overlay-fade-leave-active {
	opacity: 0;
}

.nice-modal-fade-enter-active, .nice-modal-fade-leave-active {
	transition: all 0.4s;
}

.nice-modal-fade-enter, .nice-modal-fade-leave-active {
	opacity: 0;
	transform: translateY(-20px);
}
</style>
<style type="text/css">
.vue-dialog div {
	box-sizing: border-box;
}

.vue-dialog .dialog-flex {
	width: 100%;
	height: 100%;
}

.vue-dialog .dialog-content {
	flex: 1 0 auto;
	width: 100%;
	padding: 15px;
	font-size: 14px;
}

.vue-dialog .dialog-c-title {
	font-weight: 600;
	padding-bottom: 15px;
}

.vue-dialog .dialog-c-text {
	
}

.vue-dialog .vue-dialog-buttons {
	display: flex;
	flex: 0 1 auto;
	width: 100%;
	border-top: 1px solid #eee;
}

.vue-dialog .vue-dialog-buttons-none {
	width: 100%;
	padding-bottom: 15px;
}

.vue-dialog-button {
	font-size: 12px !important;
	background: transparent;
	padding: 0;
	margin: 0;
	border: 0;
	cursor: pointer;
	box-sizing: border-box;
	line-height: 40px;
	height: 40px;
	color: inherit;
	font: inherit;
	outline: none;
}

.vue-dialog-button:hover {
	background: rgba(0, 0, 0, 0.01);
}

.vue-dialog-button:active {
	background: rgba(0, 0, 0, 0.025);
}

.vue-dialog-button:not(:first-of-type) {
	border-left: 1px solid #eee;
}
</style>

<style type="text/css">
.payment__container[data-v-8d98596c] {
	width: 1180px;
	margin-left: auto;
	margin-right: auto;
}

.payment__container .payment-address__container[data-v-8d98596c],
	.payment__container .payment-step__area[data-v-8d98596c],
	.payment__container .payment-discount__container[data-v-8d98596c],
	.payment__container .payment-final__container[data-v-8d98596c] {
	width: 980px;
	margin-left: auto;
	margin-right: auto;
}

.payment__container .payment__container-title[data-v-8d98596c] {
	font-size: 32px;
	line-height: 26px;
	text-align: center;
}

.payment__container[data-v-8d98596c] {
	margin-top: 100px;
}

.payment__container .payment__status-box[data-v-8d98596c] {
	width: 100%;
	height: 120px;
	margin-top: 43px;
	background-color: #f7f7f7;
	text-align: center;
}

.payment__container .payment__status-box .payment-status__centered[data-v-8d98596c]
	{
	display: inline-block;
	overflow: hidden;
	margin-top: 38px;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step1[data-v-8d98596c]
	{
	width: 53px;
	height: 51px;
	float: left;
	margin-top: 2px;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step1[iconActive="true"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTMuMiA1MS4zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1My4yIDUxLjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxyZWN0IHg9IjEuOCIgeT0iMS44IiBjbGFzcz0ic3QwIiB3aWR0aD0iNDAuNCIgaGVpZ2h0PSI0Ny42Ii8+Cgk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjE2LjEiIHgyPSIzNS4xIiB5Mj0iMTYuMSIvPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjkiIHkxPSIyNS42IiB4Mj0iMzUuMSIgeTI9IjI1LjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI5IiB5MT0iMzUuMSIgeDI9IjM1LjEiIHkyPSIzNS4xIi8+Cgk8Zz4KCQk8cG9seWdvbiBjbGFzcz0ic3QwIiBwb2ludHM9IjI1LDQ0LjYgMzIuMiw0Mi4zIDUxLjMsMjAuNyA0NS41LDE1LjYgMjYuNCwzNy4xIDI1LDQ0LjUgCQkiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step1[iconActive="false"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTMuMiA1MS4zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1My4yIDUxLjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxyZWN0IHg9IjEuOCIgeT0iMS44IiBjbGFzcz0ic3QwIiB3aWR0aD0iNDAuNCIgaGVpZ2h0PSI0Ny42Ii8+Cgk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjE2LjEiIHgyPSIzNS4xIiB5Mj0iMTYuMSIvPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjkiIHkxPSIyNS42IiB4Mj0iMzUuMSIgeTI9IjI1LjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSI5IiB5MT0iMzUuMSIgeDI9IjM1LjEiIHkyPSIzNS4xIi8+Cgk8Zz4KCQk8cG9seWdvbiBjbGFzcz0ic3QwIiBwb2ludHM9IjI1LDQ0LjYgMzIuMiw0Mi4zIDUxLjMsMjAuNyA0NS41LDE1LjYgMjYuNCwzNy4xIDI1LDQ0LjUgCQkiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step2[data-v-8d98596c]
	{
	width: 50px;
	height: 53px;
	float: left;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step2[iconActive="true"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTAgNTIuNyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTAgNTIuNzsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPHJlY3QgeD0iMS44IiB5PSI3LjIiIGNsYXNzPSJzdDAiIHdpZHRoPSI0Ni40IiBoZWlnaHQ9IjQzLjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIyLjciIHkxPSIyMC42IiB4Mj0iNDcuNCIgeTI9IjIwLjYiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIxMi44IiB5MT0iMS44IiB4Mj0iMTIuOCIgeTI9IjExLjkiLz4KCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIzNy4yIiB5MT0iMS44IiB4Mj0iMzcuMiIgeTI9IjExLjkiLz4KCTxnPgoJCTxsaW5lIGNsYXNzPSJzdDAiIHgxPSIyMiIgeTE9IjI4LjgiIHgyPSI0MSIgeTI9IjI4LjgiLz4KCQk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjM1LjgiIHgyPSI0MSIgeTI9IjM1LjgiLz4KCQk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjQyLjgiIHgyPSIzMyIgeTI9IjQyLjgiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step2[iconActive="false"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNTAgNTIuNyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTAgNTIuNzsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxyZWN0IHg9IjEuOCIgeT0iNy4yIiBjbGFzcz0ic3QwIiB3aWR0aD0iNDYuNCIgaGVpZ2h0PSI0My42Ii8+CjxsaW5lIGNsYXNzPSJzdDAiIHgxPSIyLjciIHkxPSIyMC42IiB4Mj0iNDcuNCIgeTI9IjIwLjYiLz4KPGxpbmUgY2xhc3M9InN0MCIgeDE9IjEyLjgiIHkxPSIxLjgiIHgyPSIxMi44IiB5Mj0iMTEuOSIvPgo8bGluZSBjbGFzcz0ic3QwIiB4MT0iMzcuMiIgeTE9IjEuOCIgeDI9IjM3LjIiIHkyPSIxMS45Ii8+CjxnPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjIyIiB5MT0iMjguOCIgeDI9IjQxIiB5Mj0iMjguOCIvPgoJPGxpbmUgY2xhc3M9InN0MCIgeDE9IjkiIHkxPSIzNS44IiB4Mj0iNDEiIHkyPSIzNS44Ii8+Cgk8bGluZSBjbGFzcz0ic3QwIiB4MT0iOSIgeTE9IjQyLjgiIHgyPSIzMyIgeTI9IjQyLjgiLz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step3[data-v-8d98596c]
	{
	width: 63px;
	height: 42px;
	float: left;
	margin-top: 5px;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step3[iconActive="true"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNjIuNyA0Mi4xIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2Mi43IDQyLjE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02MC41LDI4LjZjLTQuMiwwLTcuNS0zLjQtNy41LTcuNXMzLjQtNy41LDcuNS03LjVjMC4xLDAsMC4yLDAsMC4zLDBWMS44aC01OXYxMS43YzAuMSwwLDAuMiwwLDAuMywwCgkJYzQuMiwwLDcuNSwzLjQsNy41LDcuNXMtMy40LDcuNS03LjUsNy41Yy0wLjEsMC0wLjIsMC0wLjMsMHYxMS43aDU5VjI4LjZDNjAuNywyOC42LDYwLjYsMjguNiw2MC41LDI4LjZ6Ii8+CjwvZz4KPGxpbmUgY2xhc3M9InN0MCIgeDE9IjE4LjciIHkxPSIxNS43IiB4Mj0iNDQiIHkyPSIxNS43Ii8+CjxsaW5lIGNsYXNzPSJzdDAiIHgxPSIxOC43IiB5MT0iMjcuNyIgeDI9IjQ0IiB5Mj0iMjcuNyIvPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step3[iconActive="false"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNjIuNyA0Mi4xIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2Mi43IDQyLjE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojRjdGN0Y3O3N0cm9rZTojRDhEOEQ4O3N0cm9rZS13aWR0aDozLjY4NTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02MC41LDI4LjZjLTQuMiwwLTcuNS0zLjQtNy41LTcuNXMzLjQtNy41LDcuNS03LjVjMC4xLDAsMC4yLDAsMC4zLDBWMS44aC01OXYxMS43YzAuMSwwLDAuMiwwLDAuMywwCgkJYzQuMiwwLDcuNSwzLjQsNy41LDcuNXMtMy40LDcuNS03LjUsNy41Yy0wLjEsMC0wLjIsMC0wLjMsMHYxMS43aDU5VjI4LjZDNjAuNywyOC42LDYwLjYsMjguNiw2MC41LDI4LjZ6Ii8+CjwvZz4KPGxpbmUgY2xhc3M9InN0MCIgeDE9IjE4LjciIHkxPSIxNS43IiB4Mj0iNDQiIHkyPSIxNS43Ii8+CjxsaW5lIGNsYXNzPSJzdDAiIHgxPSIxOC43IiB5MT0iMjcuNyIgeDI9IjQ0IiB5Mj0iMjcuNyIvPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step4[data-v-8d98596c]
	{
	width: 61px;
	height: 44px;
	float: left;
	margin-top: 5px;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step4[iconActive="true"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNjEgNDMuNyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEgNDMuNzsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cjwvc3R5bGU+CjxnPgoJPHJlY3QgeD0iMS44IiB5PSIxLjgiIGNsYXNzPSJzdDAiIHdpZHRoPSI1Ny4zIiBoZWlnaHQ9IjQwIi8+Cgk8bGluZSBjbGFzcz0ic3QwIiB4MT0iMy45IiB5MT0iMTMuMiIgeDI9IjU4LjEiIHkyPSIxMy4yIi8+Cgk8Zz4KCQk8Y2lyY2xlIGN4PSI0OS40IiBjeT0iMzEuNiIgcj0iMi42Ii8+CgkJPGNpcmNsZSBjeD0iNDAuMSIgY3k9IjMxLjYiIHI9IjIuNiIvPgoJCTxjaXJjbGUgY3g9IjMwLjgiIGN5PSIzMS42IiByPSIyLjYiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-step4[iconActive="false"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNjEgNDMuNyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNjEgNDMuNzsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiNGN0Y3Rjc7c3Ryb2tlOiNEOEQ4RDg7c3Ryb2tlLXdpZHRoOjMuNjg1O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cgkuc3Qxe2ZpbGw6I0Q4RDhEODt9Cjwvc3R5bGU+CjxyZWN0IHg9IjEuOCIgeT0iMS44IiBjbGFzcz0ic3QwIiB3aWR0aD0iNTcuMyIgaGVpZ2h0PSI0MCIvPgo8bGluZSBjbGFzcz0ic3QwIiB4MT0iMy45IiB5MT0iMTMuMiIgeDI9IjU4LjEiIHkyPSIxMy4yIi8+CjxnPgoJPGNpcmNsZSBjbGFzcz0ic3QxIiBjeD0iNDkuNCIgY3k9IjMxLjYiIHI9IjIuNiIvPgoJPGNpcmNsZSBjbGFzcz0ic3QxIiBjeD0iNDAuMSIgY3k9IjMxLjYiIHI9IjIuNiIvPgoJPGNpcmNsZSBjbGFzcz0ic3QxIiBjeD0iMzAuOCIgY3k9IjMxLjYiIHI9IjIuNiIvPgo8L2c+Cjwvc3ZnPgo=)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered p[data-v-8d98596c]
	{
	float: left;
	margin-left: 14px;
	margin-top: 12px;
	font-size: 15px;
	font-weight: 700;
	line-height: 1.6;
}

.payment__container .payment__status-box .payment-status__centered p[textActive="false"][data-v-8d98596c]
	{
	color: #d8d8d8;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-arrow[data-v-8d98596c]
	{
	width: 18px;
	height: 31px;
	float: left;
	margin-top: 9px;
	margin-left: 26px;
	margin-right: 26px;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-arrow[iconActive="true"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTggMzEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4IDMxOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6Mi44MzU7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPHBvbHlsaW5lIGNsYXNzPSJzdDAiIHBvaW50cz0iMS40LDI5LjYgMTYuNiwxNS41IDEuNCwxLjQgIi8+Cjwvc3ZnPgo=)
		no-repeat;
}

.payment__container .payment__status-box .payment-status__centered .payment-status__icon-arrow[iconActive="false"][data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTggMzEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4IDMxOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6bm9uZTtzdHJva2U6I0Q4RDhEODtzdHJva2Utd2lkdGg6Mi44MzU7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPGc+Cgk8cG9seWxpbmUgY2xhc3M9InN0MCIgcG9pbnRzPSIxLjQsMjkuNiAxNi42LDE1LjUgMS40LDEuNCAJIi8+CjwvZz4KPC9zdmc+Cg==)
		no-repeat;
}

.payment__container .payment-address__container[data-v-8d98596c] {
	margin-top: 100px;
	overflow: hidden;
	margin-bottom: 26px;
}

.payment__container .payment-address__container .payment-address__title[data-v-8d98596c]
	{
	font-size: 18px;
	line-height: 24px;
}

.payment__container .payment-address__container .payment-address__button[data-v-8d98596c]
	{
	display: block;
	margin-left: auto;
	width: 86.3px;
	height: 32px;
	background-color: #f7f7f7;
	border: 1px solid #d3d3d3;
	font-size: 13px;
	font-weight: bold;
	border-radius: 5px;
	margin-top: -3px;
}

.payment__container .payment-address__container .payment-address__box[data-v-8d98596c]
	{
	overflow: hidden;
	margin-top: 18px;
	margin-bottom: 54px;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-left[data-v-8d98596c]
	{
	float: left;
	width: 178px;
	border-left: 1px solid #e1dedf;
	border-right: 1px solid #e1dedf;
	border-top: 1px solid #e1dedf;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-left .payment-address__left-title[data-v-8d98596c]
	{
	background-color: #f7f7f7;
	height: 49px;
	border-bottom: 1px solid #e1dedf;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-left .payment-address__left-title .payment-address__title-text[data-v-8d98596c]
	{
	font-size: 13px;
	line-height: 24px;
	position: relative;
	top: 14px;
	left: 29px;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-right[data-v-8d98596c]
	{
	border-top: 1px solid #e1dedf;
	border-right: 1px solid #e1dedf;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-right .payment-address__right-content[data-v-8d98596c]
	{
	height: 49px;
	border-bottom: 1px solid #e1dedf;
}

.payment__container .payment-address__container .payment-address__box .payment-address__box-right .payment-address__right-content .payment-address__content-text[data-v-8d98596c]
	{
	font-size: 13px;
	line-height: 24px;
	position: relative;
	top: 13px;
	left: 27.5px;
}

.payment__container .payment-step__area[data-v-8d98596c] {
	overflow: hidden;
	margin-bottom: 90px;
}

.payment__container .payment-step__area .payment__btn[data-v-8d98596c] {
	width: 50%;
	height: 60px;
	border: none;
	color: white;
	font-size: 16px;
	font-weight: bold;
	float: left;
}

.payment__container .payment-step__area .background__black[data-v-8d98596c]
	{
	background-color: black;
}

.payment__container .payment-step__area .background__gray[data-v-8d98596c]
	{
	background-color: #888888;
}

.payment__container .payment-shipping__datetime-container[data-v-8d98596c]
	{
	width: 787px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 60px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-title[data-v-8d98596c],
	.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-title[data-v-8d98596c]
	{
	float: left;
	margin-left: 23px;
	font-size: 18px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box[data-v-8d98596c]
	{
	width: 785px;
	height: 98px;
	border: 1px solid #bbb;
	text-align: unset;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .tooltip-box[data-v-8d98596c]
	{
	margin-left: 88px;
	margin-top: 2px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-title[data-v-8d98596c]
	{
	margin-top: 36px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-title i[data-v-8d98596c]
	{
	margin-left: 4px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-button[data-v-8d98596c]
	{
	float: left;
	width: 350px;
	height: 50px;
	line-height: 50px;
	background-color: white;
	border: 1px solid #000;
	margin-left: 50px;
	margin-top: 25px;
	text-align: unset;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-button .payment-shipping__date-text[data-v-8d98596c]
	{
	font-size: 18px;
	float: left;
	margin-left: 16px;
	min-height: 50px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__date-box .payment-shipping__date-button .payment-shipping__date-icon[data-v-8d98596c]
	{
	display: block;
	float: right;
	width: 32px;
	height: 29px;
	background:
		url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIyOSIgdmlld0JveD0iMCAwIDMyIDI5Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTS0xMDI2LTQ5OUg4OTR2MTUzMGgtMTkyMHoiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiNCQkIiIGQ9Ik0tNDU5LjUtMzYuNWg3ODZ2OThoLTc4NnoiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiMwMDAiIGQ9Ik0tMzA0LjUtMTEuNWgzNTB2NDhoLTM1MHoiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiMwMDAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0uOSAyMy44MTJoMjYuMjY3VjIuNzk4SC45ek0yNy4xNjcgOS4wNzZILjlNNy44My45djMuMjg0TTIwLjU1Mi45djMuMjg0Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0ZGRiIgZD0iTTMwLjMyIDIwLjVhNy4yMjQgNy4yMjQgMCAxIDEtMTQuNDQ4IDAgNy4yMjQgNy4yMjQgMCAwIDEgMTQuNDQ4IDAiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiMwMDAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0zMC4zMiAyMC41YTcuMjI0IDcuMjI0IDAgMSAxLTE0LjQ0OCAwIDcuMjI0IDcuMjI0IDAgMCAxIDE0LjQ0OCAwek0yMy4wOTcgMTcuMjZ2My4yODNNMjUuNDE4IDIyLjg2NWwtMi4zMjItMi4zMjIiLz4KICAgIDwvZz4KPC9zdmc+Cg==)
		no-repeat;
	background-size: cover;
	margin-top: 12px;
	margin-right: 14px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box[data-v-8d98596c]
	{
	width: 785px;
	border: 1px solid #bbb;
	border-top: none;
	margin-left: auto;
	margin-right: auto;
	overflow: hidden;
	padding-bottom: 33px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-title[data-v-8d98596c]
	{
	margin-top: 35px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content[data-v-8d98596c]
	{
	float: left;
	margin-left: 87px;
	margin-top: 33px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-value[data-v-8d98596c]
	{
	cursor: pointer;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-value[data-v-8d98596c]:nth-child(2)
	{
	margin-top: 16px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-value .payment-shipping__time-checkbox[data-v-8d98596c]
	{
	width: 21px;
	height: 21px;
	border: 1.5px solid #e0e0e0;
	border-radius: 50%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-value .payment-shipping__time-checkbox div[data-v-8d98596c]
	{
	width: 12px;
	height: 12px;
	border-radius: 50%;
	background-color: #ed0000;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-value .payment-shipping__time-text[data-v-8d98596c]
	{
	margin-left: 9px;
	font-size: 18px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-ready[data-v-8d98596c]
	{
	float: left;
	font-size: 18px;
	line-height: 30px;
}

.payment__container .payment-shipping__datetime-container .payment-shipping__time-box .payment-shipping__time-content .payment-shipping__time-select[data-v-8d98596c]
	{
	float: left;
	width: 61px;
	height: 30px;
	margin-left: 41px;
	border: 1px solid #585858;
	background-color: white;
	border-radius: 3px;
	color: #585858;
	font-size: 11px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container[data-v-8d98596c]
	{
	overflow: hidden;
	width: 792px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	margin-bottom: 50px;
}

.payment__container .payment-shipping__final-container button[data-v-8d98596c]
	{
	cursor: default;
}

.payment__container .payment-shipping__final-container .clickable[data-v-8d98596c]
	{
	cursor: pointer;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[data-v-8d98596c]
	{
	float: left;
	width: 381px;
	height: 128px;
	border-radius: 10px;
	border: 1px solid #9b9b9b;
	background-color: white;
	text-align: left;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-left[data-v-8d98596c]
	{
	float: left;
	margin-left: 19px;
	margin-top: 13px;
	color: #4a90e2;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-left .payment-shipping__freshplan-icon[data-v-8d98596c]
	{
	margin-left: 3px;
	display: block;
	width: 99px;
	height: 45px;
	background: url(/static/img/freshplan-active.f91ad28.svg) no-repeat;
	background-size: cover;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-left .payment-shipping__freshplan-title[data-v-8d98596c]
	{
	margin-top: 13px;
	font-size: 18px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-left .payment-shipping__freshplan-title i[data-v-8d98596c]
	{
	display: inline-block;
	cursor: pointer;
	width: 19px;
	height: 19px;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTkgMTkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE5IDE5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiM1MEUzQzI7fQoJLnN0MntmaWxsOiNGRkZGRkY7fQo8L3N0eWxlPgo8Zz4KCTxkZWZzPgoJCTxyZWN0IGlkPSJTVkdJRF8xXyIgd2lkdGg9IjE5IiBoZWlnaHQ9IjE5Ii8+Cgk8L2RlZnM+Cgk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJPC9jbGlwUGF0aD4KCTxnIGNsYXNzPSJzdDAiPgoJCTxkZWZzPgoJCQk8cmVjdCBpZD0iU1ZHSURfM18iIHg9Ii0xMjk4IiB5PSItOTI0IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxNTMwIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNF8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8zXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPHJlY3QgeD0iLTUiIHk9Ii01IiBjbGFzcz0ic3QxIiB3aWR0aD0iMjkiIGhlaWdodD0iMjkiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik03LjgsMTAuNGMwLTAuMywwLTAuNSwwLjEtMC43QzgsOS41LDguMSw5LjQsOC4zLDkuMkM4LjUsOSw4LjcsOC44LDguOSw4LjZjMC4yLTAuMiwwLjQtMC4zLDAuNS0wLjUKCQkJQzkuNiw4LDkuNyw3LjgsOS44LDcuN2MwLjEtMC4xLDAuMS0wLjMsMC4xLTAuNGMwLTAuMy0wLjEtMC41LTAuMy0wLjdDOS41LDYuNCw5LjMsNi40LDksNi40Yy0wLjQsMC0wLjcsMC4xLTAuOSwwLjMKCQkJUzcuNyw3LjIsNy43LDcuNWwtMi0wLjFjMC4xLTAuOSwwLjQtMS42LDEtMi4xQzcuMyw0LjgsOCw0LjYsOSw0LjZjMC40LDAsMC44LDAuMSwxLjEsMC4yUzEwLjcsNSwxMSw1LjJzMC41LDAuNSwwLjYsMC44CgkJCWMwLjIsMC4zLDAuMiwwLjcsMC4yLDEuMWMwLDAuMywwLDAuNS0wLjEsMC43Yy0wLjEsMC4yLTAuMSwwLjQtMC4zLDAuNkMxMS40LDguNiwxMS4yLDguOCwxMSw5Yy0wLjIsMC4yLTAuNSwwLjQtMC44LDAuNwoJCQljLTAuMiwwLjItMC4zLDAuMy0wLjQsMC41Yy0wLjEsMC4xLTAuMSwwLjMtMC4xLDAuNFYxMUg3LjhWMTAuNHogTTcuNiwxMi45YzAtMC4yLDAtMC4zLDAuMS0wLjVjMC4xLTAuMSwwLjEtMC4zLDAuMy0wLjQKCQkJYzAuMS0wLjEsMC4yLTAuMiwwLjQtMC4zczAuMy0wLjEsMC41LTAuMWMwLjIsMCwwLjMsMCwwLjUsMC4xczAuMywwLjEsMC40LDAuM3MwLjIsMC4yLDAuMywwLjRjMC4xLDAuMSwwLjEsMC4zLDAuMSwwLjUKCQkJYzAsMC4yLDAsMC4zLTAuMSwwLjVjLTAuMSwwLjEtMC4xLDAuMy0wLjMsMC40UzkuNCwxMy45LDkuMywxNHMtMC4zLDAuMS0wLjUsMC4xYy0wLjIsMC0wLjMsMC0wLjUtMC4xUzgsMTMuOCw3LjksMTMuNwoJCQljLTAuMS0wLjEtMC4yLTAuMi0wLjMtMC40QzcuNiwxMy4yLDcuNiwxMyw3LjYsMTIuOXoiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
	background-size: cover;
	position: relative;
	left: 2px;
	top: 3px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right[data-v-8d98596c]
	{
	float: left;
	margin-left: 25px;
	margin-top: 10px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right .payment-shipping__freshplan-desc[data-v-8d98596c]
	{
	font-size: 14px;
	line-height: 22px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right .payment-shipping__freshplan-check-box[data-v-8d98596c]
	{
	margin-top: 17px;
	overflow: hidden;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right .payment-shipping__freshplan-check-box .payment-shipping__freshplan-check-input[data-v-8d98596c]
	{
	width: 20px;
	height: 20px;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDIwIDIwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOm5vbmU7c3Ryb2tlOiM5RTlFOUU7c3Ryb2tlLXdpZHRoOjQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MntmaWxsOm5vbmU7c3Ryb2tlOiNFNUU1RTU7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxkZWZzPgoJCTxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTIsMGgxNmMxLjEsMCwyLDAuOSwyLDJ2MTZjMCwxLjEtMC45LDItMiwySDJjLTEuMSwwLTItMC45LTItMlYyQzAsMC45LDAuOSwwLDIsMHoiLz4KCTwvZGVmcz4KCTxjbGlwUGF0aCBpZD0iU1ZHSURfMl8iPgoJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzFfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+Cgk8L2NsaXBQYXRoPgoJPGcgY2xhc3M9InN0MCI+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTcxMiIgeT0iLTc4OCIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTUzMCIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfM18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxwYXRoIGNsYXNzPSJzdDEiIGQ9Ik0yLDBoMTZjMS4xLDAsMiwwLjksMiwydjE2YzAsMS4xLTAuOSwyLTIsMkgyYy0xLjEsMC0yLTAuOS0yLTJWMkMwLDAuOSwwLjksMCwyLDB6Ii8+Cgk8L2c+CjwvZz4KPGc+Cgk8cG9seWxpbmUgY2xhc3M9InN0MiIgcG9pbnRzPSI1LDkuOSA5LjQsMTMuMiAxNC43LDcgCSIvPgo8L2c+Cjwvc3ZnPgo=)
		no-repeat;
	background-size: cover;
	float: left;
	margin-top: 1px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right .payment-shipping__freshplan-check-box .payment-shipping__freshplan-check-active[data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDIwIDIwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0MntmaWxsOm5vbmU7c3Ryb2tlOiNEMDAyMUI7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQo8L3N0eWxlPgo8Zz4KCTxkZWZzPgoJCTxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTIsMGgxNmMxLjEsMCwyLDAuOSwyLDJ2MTZjMCwxLjEtMC45LDItMiwySDJjLTEuMSwwLTItMC45LTItMlYyQzAsMC45LDAuOSwwLDIsMHoiLz4KCTwvZGVmcz4KCTxjbGlwUGF0aCBpZD0iU1ZHSURfMl8iPgoJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzFfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+Cgk8L2NsaXBQYXRoPgoJPGcgY2xhc3M9InN0MCI+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTcxMiIgeT0iLTc4OCIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTUzMCIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfM18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxwYXRoIGNsYXNzPSJzdDEiIGQ9Ik0yLDBoMTZjMS4xLDAsMiwwLjksMiwydjE2YzAsMS4xLTAuOSwyLTIsMkgyYy0xLjEsMC0yLTAuOS0yLTJWMkMwLDAuOSwwLjksMCwyLDB6Ii8+Cgk8L2c+CjwvZz4KPGc+Cgk8cG9seWxpbmUgY2xhc3M9InN0MiIgcG9pbnRzPSI1LDkuOSA5LjQsMTMuMiAxNC43LDcgCSIvPgo8L2c+Cjwvc3ZnPgo=)
		no-repeat;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive .payment-shipping__freshplan-right .payment-shipping__freshplan-check-box p[data-v-8d98596c]
	{
	font-size: 14px;
	margin-left: 7px;
	float: left;
	color: black;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"][data-v-8d98596c]
	{
	background-color: #b8b8b8;
	cursor: default;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"] .payment-shipping__freshplan-left[data-v-8d98596c]
	{
	color: #9b9b9b;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"] .payment-shipping__freshplan-left .payment-shipping__freshplan-icon[data-v-8d98596c]
	{
	background: url(/static/img/freshplan-deactive.ff825da.svg) no-repeat;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"] .payment-shipping__freshplan-desc[data-v-8d98596c]
	{
	color: #9b9b9b;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"] .payment-shipping__freshplan-check-box .payment-shipping__freshplan-check-input[data-v-8d98596c]
	{
	width: 16px;
	height: 16px;
	border: 2px solid #9b9b9b;
	float: left;
	border-radius: 2px;
	background: unset;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[disabled="disabled"] .payment-shipping__freshplan-check-box p[data-v-8d98596c]
	{
	color: #9b9b9b;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"][data-v-8d98596c]
	{
	width: 381px;
	height: 128px;
	border: 2px solid #4a90e2;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"] .payment-shipping__freshplan-left[data-v-8d98596c]
	{
	margin-left: 18px;
	margin-top: 12px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"] .payment-shipping__freshplan-right[data-v-8d98596c]
	{
	margin-top: 11px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"] .payment-shipping__freshplan-right .payment-shipping__freshplan-plan[data-v-8d98596c]
	{
	font-size: 19px;
	line-height: 22px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"] .payment-shipping__freshplan-right .payment-shipping__freshplan-date[data-v-8d98596c]
	{
	margin-top: 4px;
	font-size: 13px;
	font-weight: bold;
	color: #c2c2c2;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="true"] .payment-shipping__freshplan-right .payment-shipping__freshplan-check-box[data-v-8d98596c]
	{
	margin-top: 14px;
	overflow: hidden;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="available"][data-v-8d98596c]
	{
	width: 381px;
	height: 128px;
	border: 2px solid #4a90e2;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="available"] .payment-shipping__freshplan-left[data-v-8d98596c]
	{
	margin-left: 18px;
	margin-top: 12px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="available"] .payment-shipping__freshplan-right[data-v-8d98596c]
	{
	margin-top: 13px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="available"] .payment-shipping__freshplan-right .payment-shipping__freshplan-desc[data-v-8d98596c]
	{
	font-size: 19px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="available"] .payment-shipping__freshplan-right .payment-shipping__freshplan-sub[data-v-8d98596c]
	{
	margin-top: 22px;
	font-size: 14px;
	font-weight: bold;
	line-height: 19px;
	color: #c2c2c2;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="not_available"][data-v-8d98596c]
	{
	width: 383px;
	height: 130px;
	border: 1px solid #9b9b9b;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="not_available"] .payment-shipping__freshplan-left[data-v-8d98596c]
	{
	margin-left: 18px;
	margin-top: 12px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="not_available"] .payment-shipping__freshplan-right[data-v-8d98596c]
	{
	margin-top: 13px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="not_available"] .payment-shipping__freshplan-right .payment-shipping__freshplan-desc[data-v-8d98596c]
	{
	font-size: 19px;
}

.payment__container .payment-shipping__final-container .payment-shipping__freshplan-deactive[activated="not_available"] .payment-shipping__freshplan-right .payment-shipping__freshplan-sub[data-v-8d98596c]
	{
	margin-top: 22px;
	font-size: 14px;
	font-weight: bold;
	line-height: 19px;
	color: #c2c2c2;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[data-v-8d98596c]
	{
	width: 381px;
	height: 126px;
	border: 1px solid #9b9b9b;
	float: left;
	margin-left: 26px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="disabled"] p[data-v-8d98596c]
	{
	line-height: 126px;
	text-align: center;
	color: #9b9b9b;
	font-size: 18px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="available"] h5[data-v-8d98596c]
	{
	text-align: center;
	font-size: 18px;
	line-height: 43px;
	margin-top: 23px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="available"] p[data-v-8d98596c]
	{
	font-size: 24px;
	margin-top: -9px;
	font-weight: bold;
	color: #9b9b9b;
	text-align: center;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="available"] p span[data-v-8d98596c]:nth-child(1)
	{
	margin-left: 11px;
	font-size: 30px;
	color: #4a90e2;
	position: relative;
	top: 2px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="available"] p span[data-v-8d98596c]:nth-child(2)
	{
	font-size: 18px;
	margin-left: 2px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="purchase"] h5[data-v-8d98596c]
	{
	text-align: center;
	font-size: 18px;
	line-height: 43px;
	margin-top: 11px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="purchase"] p[data-v-8d98596c]
	{
	font-size: 24px;
	margin-top: -12px;
	font-weight: bold;
	color: #9b9b9b;
	text-align: center;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="purchase"] p span[data-v-8d98596c]:nth-child(1)
	{
	margin-left: 11px;
	font-size: 30px;
	color: #4a90e2;
	position: relative;
	top: 2px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="purchase"] p span[data-v-8d98596c]:nth-child(2)
	{
	font-size: 18px;
	margin-left: 2px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="purchase"] b[data-v-8d98596c]
	{
	display: block;
	text-align: center;
	margin-top: 4px;
	font-size: 14px;
	color: #d0021b;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default[data-v-8d98596c]
	{
	margin-left: 6px;
	margin-top: 39px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default div[data-v-8d98596c]
	{
	float: left;
	margin-left: 17px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default div h5[data-v-8d98596c]
	{
	font-size: 13px;
	color: #9b9b9b;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default div p[data-v-8d98596c]
	{
	font-size: 21px;
	font-weight: bold;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default div p span[data-v-8d98596c]
	{
	font-size: 13px;
	font-weight: normal;
	margin-left: 1px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default .payment-shipping__summary-default-minus[data-v-8d98596c]
	{
	width: 29px;
	height: 29px;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjkgMjkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5IDI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiNEOEQ4RDg7fQoJLnN0MntjbGlwLXBhdGg6dXJsKCNTVkdJRF82Xyk7fQoJLnN0M3tjbGlwLXBhdGg6dXJsKCNTVkdJRF84Xyk7ZmlsbDojRkZGRkZGO30KPC9zdHlsZT4KPGc+Cgk8Zz4KCQk8ZGVmcz4KCQkJPGNpcmNsZSBpZD0iU1ZHSURfMV8iIGN4PSIxNC41IiBjeT0iMTQuNSIgcj0iMTQuNSIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDAiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTEwNzkiIHk9Ii03NTEiIHdpZHRoPSIxOTIwIiBoZWlnaHQ9IjE1MzAiLz4KCQkJPC9kZWZzPgoJCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzNfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJCTwvY2xpcFBhdGg+CgkJCTxyZWN0IHg9Ii01IiB5PSItNSIgY2xhc3M9InN0MSIgd2lkdGg9IjM5IiBoZWlnaHQ9IjM5Ii8+CgkJPC9nPgoJPC9nPgoJPGc+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF81XyIgeD0iNyIgeT0iMTMiIHdpZHRoPSIxNSIgaGVpZ2h0PSIzIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNl8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF81XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0MiI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzdfIiB4PSItMTA3OSIgeT0iLTc1MSIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTUzMCIvPgoJCQk8L2RlZnM+CgkJCTxjbGlwUGF0aCBpZD0iU1ZHSURfOF8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfN18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQkJPC9jbGlwUGF0aD4KCQkJPHJlY3QgeD0iMiIgeT0iOCIgY2xhc3M9InN0MyIgd2lkdGg9IjI1IiBoZWlnaHQ9IjEzIi8+CgkJPC9nPgoJPC9nPgo8L2c+Cjwvc3ZnPgo=)
		no-repeat;
	border-radius: 50%;
	float: left;
	margin-left: 16px;
	margin-top: 9px;
}

.payment__container .payment-shipping__final-container .payment-shipping__summary[activated="default"] .payment-shipping__summary-default .payment-shipping__summary-default-equal[data-v-8d98596c]
	{
	width: 29px;
	height: 29px;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjkgMjkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5IDI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiNEOEQ4RDg7fQoJLnN0MntjbGlwLXBhdGg6dXJsKCNTVkdJRF82Xyk7fQoJLnN0M3tjbGlwLXBhdGg6dXJsKCNTVkdJRF84Xyk7ZmlsbDojRkZGRkZGO30KCS5zdDR7Y2xpcC1wYXRoOnVybCgjU1ZHSURfMTBfKTt9Cgkuc3Q1e2NsaXAtcGF0aDp1cmwoI1NWR0lEXzEyXyk7ZmlsbDojRkZGRkZGO30KPC9zdHlsZT4KPGc+Cgk8Zz4KCQk8ZGVmcz4KCQkJPGNpcmNsZSBpZD0iU1ZHSURfMV8iIGN4PSIxNC41IiBjeT0iMTQuNSIgcj0iMTQuNSIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDAiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTEyMTMiIHk9Ii03NTEiIHdpZHRoPSIxOTIwIiBoZWlnaHQ9IjE1MzAiLz4KCQkJPC9kZWZzPgoJCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzNfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJCTwvY2xpcFBhdGg+CgkJCTxyZWN0IHg9Ii01IiB5PSItNSIgY2xhc3M9InN0MSIgd2lkdGg9IjM5IiBoZWlnaHQ9IjM5Ii8+CgkJPC9nPgoJPC9nPgoJPGc+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF81XyIgeD0iNyIgeT0iMTAiIHdpZHRoPSIxNSIgaGVpZ2h0PSIzIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNl8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF81XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0MiI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzdfIiB4PSItMTIxMyIgeT0iLTc1MSIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTUzMCIvPgoJCQk8L2RlZnM+CgkJCTxjbGlwUGF0aCBpZD0iU1ZHSURfOF8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfN18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQkJPC9jbGlwUGF0aD4KCQkJPHJlY3QgeD0iMiIgeT0iNSIgY2xhc3M9InN0MyIgd2lkdGg9IjI1IiBoZWlnaHQ9IjEzIi8+CgkJPC9nPgoJPC9nPgoJPGc+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF85XyIgeD0iNyIgeT0iMTYiIHdpZHRoPSIxNSIgaGVpZ2h0PSIzIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfMTBfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfOV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDQiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF8xMV8iIHg9Ii0xMjEzIiB5PSItNzUxIiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxNTMwIi8+CgkJCTwvZGVmcz4KCQkJPGNsaXBQYXRoIGlkPSJTVkdJRF8xMl8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMTFfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJCTwvY2xpcFBhdGg+CgkJCTxyZWN0IHg9IjIiIHk9IjExIiBjbGFzcz0ic3Q1IiB3aWR0aD0iMjUiIGhlaWdodD0iMTMiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPC9zdmc+Cg==)
		no-repeat;
	border-radius: 50%;
	float: left;
	margin-left: 16px;
	margin-top: 9px;
}

.payment__container .payment-discount__container[data-v-8d98596c] {
	margin-top: 117px;
	margin-bottom: 80px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	overflow: hidden;
}

.payment__container .payment-discount__container .payment-discount__box[data-v-8d98596c]
	{
	width: 478px;
	height: 118px;
	border: 1px solid #e1dedf;
	float: left;
}

.payment__container .payment-discount__container .payment-discount__box[data-v-8d98596c]:nth-child(1)
	{
	margin-right: 20px;
}

.payment__container .payment-discount__container .payment-discount__box .payment-discount__content[data-v-8d98596c]
	{
	margin-top: 31px;
	margin-left: 29px;
	float: left;
}

.payment__container .payment-discount__container .payment-discount__box .payment-discount__content .payment-discount__title[data-v-8d98596c]
	{
	font-size: 21px;
}

.payment__container .payment-discount__container .payment-discount__box .payment-discount__content .payment-discount__text[data-v-8d98596c]
	{
	font-size: 15px;
	margin-top: 8px;
}

.payment__container .payment-discount__container .payment-discount__box .payment-discount__content .payment-discount__text .payment-discount__split[data-v-8d98596c]
	{
	width: 1px;
	height: 16px;
	display: inline-block;
	background-color: #e1dedf;
	margin-left: 9px;
	margin-right: 9px;
	position: relative;
	top: 3px;
}

.payment__container .payment-discount__container .payment-discount__box .payment-discount__btn[data-v-8d98596c]
	{
	border: 1px solid #d3d3d3;
	background-color: #f7f7f7;
	width: 84.3px;
	height: 36px;
	float: right;
	margin-right: 22.7px;
	margin-top: 40.4px;
	font-size: 13px;
	font-weight: 700;
	cursor: pointer;
	border-radius: 5px;
}

.payment__container .payment-final__container[data-v-8d98596c] {
	margin-top: 4px;
}

.payment__container .payment-final__container h4[data-v-8d98596c] {
	margin-top: 50px;
	font-size: 21px;
	line-height: 24px;
}

.payment__container .payment-final__container .payment-final__prefix[data-v-8d98596c]
	{
	width: 978px;
	height: auto;
	margin-top: 10px;
	border: 1px solid #e1dedf;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line[data-v-8d98596c]
	{
	width: 930px;
	margin-left: auto;
	margin-right: auto;
	min-height: 65px;
	line-height: 65px;
	border-bottom: 1px solid #f5f5f5;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line section[data-v-8d98596c]
	{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	height: 65px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line[data-v-8d98596c]:nth-last-child(1)
	{
	border-bottom: none;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .prefix-select-area[data-v-8d98596c]
	{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .prefix-payment-date[data-v-8d98596c]
	{
	font-size: 12px;
	color: #424242;
	margin-left: 16px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .checkbox__form[data-v-8d98596c]
	{
	margin-left: 2px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line h5[data-v-8d98596c]
	{
	font-size: 16px;
	margin-left: 16px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .direct__help[data-v-8d98596c]
	{
	display: inline-block;
	cursor: pointer;
	width: 19px;
	height: 19px;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTkgMTkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE5IDE5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiM1MEUzQzI7fQoJLnN0MntmaWxsOiNGRkZGRkY7fQo8L3N0eWxlPgo8Zz4KCTxkZWZzPgoJCTxyZWN0IGlkPSJTVkdJRF8xXyIgd2lkdGg9IjE5IiBoZWlnaHQ9IjE5Ii8+Cgk8L2RlZnM+Cgk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJPC9jbGlwUGF0aD4KCTxnIGNsYXNzPSJzdDAiPgoJCTxkZWZzPgoJCQk8cmVjdCBpZD0iU1ZHSURfM18iIHg9Ii0xMjk4IiB5PSItOTI0IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxNTMwIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNF8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8zXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPHJlY3QgeD0iLTUiIHk9Ii01IiBjbGFzcz0ic3QxIiB3aWR0aD0iMjkiIGhlaWdodD0iMjkiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik03LjgsMTAuNGMwLTAuMywwLTAuNSwwLjEtMC43QzgsOS41LDguMSw5LjQsOC4zLDkuMkM4LjUsOSw4LjcsOC44LDguOSw4LjZjMC4yLTAuMiwwLjQtMC4zLDAuNS0wLjUKCQkJQzkuNiw4LDkuNyw3LjgsOS44LDcuN2MwLjEtMC4xLDAuMS0wLjMsMC4xLTAuNGMwLTAuMy0wLjEtMC41LTAuMy0wLjdDOS41LDYuNCw5LjMsNi40LDksNi40Yy0wLjQsMC0wLjcsMC4xLTAuOSwwLjMKCQkJUzcuNyw3LjIsNy43LDcuNWwtMi0wLjFjMC4xLTAuOSwwLjQtMS42LDEtMi4xQzcuMyw0LjgsOCw0LjYsOSw0LjZjMC40LDAsMC44LDAuMSwxLjEsMC4yUzEwLjcsNSwxMSw1LjJzMC41LDAuNSwwLjYsMC44CgkJCWMwLjIsMC4zLDAuMiwwLjcsMC4yLDEuMWMwLDAuMywwLDAuNS0wLjEsMC43Yy0wLjEsMC4yLTAuMSwwLjQtMC4zLDAuNkMxMS40LDguNiwxMS4yLDguOCwxMSw5Yy0wLjIsMC4yLTAuNSwwLjQtMC44LDAuNwoJCQljLTAuMiwwLjItMC4zLDAuMy0wLjQsMC41Yy0wLjEsMC4xLTAuMSwwLjMtMC4xLDAuNFYxMUg3LjhWMTAuNHogTTcuNiwxMi45YzAtMC4yLDAtMC4zLDAuMS0wLjVjMC4xLTAuMSwwLjEtMC4zLDAuMy0wLjQKCQkJYzAuMS0wLjEsMC4yLTAuMiwwLjQtMC4zczAuMy0wLjEsMC41LTAuMWMwLjIsMCwwLjMsMCwwLjUsMC4xczAuMywwLjEsMC40LDAuM3MwLjIsMC4yLDAuMywwLjRjMC4xLDAuMSwwLjEsMC4zLDAuMSwwLjUKCQkJYzAsMC4yLDAsMC4zLTAuMSwwLjVjLTAuMSwwLjEtMC4xLDAuMy0wLjMsMC40UzkuNCwxMy45LDkuMywxNHMtMC4zLDAuMS0wLjUsMC4xYy0wLjIsMC0wLjMsMC0wLjUtMC4xUzgsMTMuOCw3LjksMTMuNwoJCQljLTAuMS0wLjEtMC4yLTAuMi0wLjMtMC40QzcuNiwxMy4yLDcuNiwxMyw3LjYsMTIuOXoiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
	background-size: cover;
	position: relative;
	left: 8px;
	top: 1px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .prefix-button-area[data-v-8d98596c]
	{
	margin-left: auto;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .prefix-button-area button[data-v-8d98596c]
	{
	width: 110px;
	height: 32px;
	background-color: #f7f7f7;
	border: 1px solid #d3d3d3;
	font-size: 13px;
	font-weight: 700;
	border-radius: 5px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .prefix-button-area p[data-v-8d98596c]
	{
	font-size: 13px;
	margin-right: 8px;
	min-width: 152px;
	height: 100%;
	text-align: right;
	min-height: 1px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__prefix-payco[data-v-8d98596c]
	{
	float: left;
	margin-left: 16px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__prefix-naver[data-v-8d98596c]
	{
	float: left;
	margin-left: 16px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__prefix-kakaopay[data-v-8d98596c]
	{
	float: left;
	margin-left: 16px;
	width: 70px;
	height: 28px;
	border-radius: 14px;
	background-color: #ffdf03;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__prefix-kakaopay img[data-v-8d98596c]
	{
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 9px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-reward[data-v-8d98596c]
	{
	font-size: 12px;
	float: left;
	margin-left: 8px;
	margin-top: 2px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__payco-text[data-v-8d98596c]
	{
	color: #c0bfbf;
	font-size: 14px;
	font-weight: bold;
	margin-left: 36px;
	line-height: 23px;
	margin-bottom: 17px;
	padding-top: 30px;
	clear: both;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description[data-v-8d98596c]
	{
	clear: both;
	line-height: normal;
	margin-left: 36px;
	padding-bottom: 18px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-notice[data-v-8d98596c]
	{
	font-size: 12px;
	color: #9e9e9e;
	margin-left: 16px;
	margin-right: 16px;
	margin-top: 20px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-notice p[data-v-8d98596c]
	{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-notice p span[data-v-8d98596c]:nth-child(1)
	{
	margin-right: 4px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description article[data-v-8d98596c]
	{
	width: 894px;
	border: 1px solid #424242;
	border-radius: 4px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description article .payment-final__kakao-alert[data-v-8d98596c]
	{
	width: 100%;
	height: 48px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description article .payment-final__kakao-alert i[data-v-8d98596c]
	{
	display: block;
	width: 16px;
	height: 16px;
	background:
		url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiMzMzMiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMGM0LjQxOCAwIDggMy41ODIgOCA4cy0zLjU4MiA4LTggOC04LTMuNTgyLTgtOCAzLjU4Mi04IDgtOHptLS4wMDUgMTAuMjJjLS4yNiAwLS40NzcuMDkyLS42NS4yNzUtLjE3My4xODMtLjI2LjQxMi0uMjYuNjg1IDAgLjI3My4wODcuNTAyLjI2LjY4NS4xNzMuMTgzLjM5LjI3NS42NS4yNzVzLjQ3OC0uMDkyLjY1NS0uMjc1Yy4xNzctLjE4My4yNjUtLjQxMi4yNjUtLjY4NSAwLS4yNzMtLjA4OC0uNTAyLS4yNjUtLjY4NS0uMTc3LS4xODMtLjM5NS0uMjc1LS42NTUtLjI3NXptLjc0LTUuODJoLTEuNDhsLjA1IDEuMzkuMjEgMy42OWguOTZsLjIxLTMuNjkuMDUtMS4zOXoiLz4KPC9zdmc+Cg==)
		no-repeat;
	margin-left: 24px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description article .payment-final__kakao-alert h6[data-v-8d98596c]
	{
	font-size: 14px;
	line-height: 17px;
	margin-left: 7px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description article .payment-final__kakao-alert img[data-v-8d98596c]
	{
	margin-left: auto;
	margin-right: 24px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-example[data-v-8d98596c]
	{
	margin-top: 20px;
	margin-bottom: 20px;
	overflow: hidden;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-example div[data-v-8d98596c]
	{
	float: left;
	margin-right: 56px;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-example div span[data-v-8d98596c]
	{
	display: block;
	font-size: 12px;
	color: #333333;
}

.payment__container .payment-final__container .payment-final__prefix .payment-final__prefix-line .payment-final__kakao-description .payment-final__kakao-example div img[data-v-8d98596c]
	{
	display: block;
	margin-top: 15px;
}

.payment__container .payment-final__container .payment-final__summary[data-v-8d98596c]
	{
	width: 978px;
	margin-top: 10px;
	border: 1px solid #e1dedf;
}

.payment__container .payment-final__container .payment-final__summary ul[data-v-8d98596c]
	{
	margin-left: 99px;
	width: 775px;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line[data-v-8d98596c]
	{
	margin-top: 45px;
	overflow: hidden;
	border-bottom: 1px solid #e1dedf;
	line-height: 25px;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line .payment-final__summary-line-name[data-v-8d98596c]
	{
	font-size: 15px;
	color: #555555;
	float: left;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line .payment-final__summary-line-option[data-v-8d98596c]
	{
	font-size: 13px;
	font-weight: bold;
	color: #d3d3d3;
	margin-left: 15px;
	float: left;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line .payment-final__summary-line-count[data-v-8d98596c]
	{
	font-size: 15px;
	width: 92.5px;
	float: right;
	text-align: right;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line .payment-final__summary-line-price[data-v-8d98596c]
	{
	font-size: 15px;
	width: 131.5px;
	float: right;
	text-align: right;
	color: #555555;
}

.payment__container .payment-final__container .payment-final__summary ul .payment-final__summary-line .payment-final__summary-line-weight[data-v-8d98596c]
	{
	width: 130px;
	float: right;
	font-size: 15px;
	color: #555555;
	text-align: right;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price[data-v-8d98596c]
	{
	width: 940px;
	height: 100px;
	background-color: #f7f7f7;
	margin-top: 40px;
	margin-bottom: 22px;
	margin-left: auto;
	margin-right: auto;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price h5[data-v-8d98596c]
	{
	font-size: 13px;
	line-height: 43px;
	color: #9b9b9b;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price p[data-v-8d98596c]
	{
	font-size: 21px;
	font-weight: bold;
	line-height: 43px;
	margin-top: -20px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price p span[data-v-8d98596c]
	{
	font-size: 13px;
	font-weight: normal;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-product[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 35px;
	float: left;
	width: 136.44px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-direct[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 40px;
	float: left;
	width: 119.67px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-shipping[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 40px;
	float: left;
	width: 83.89px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-shipping[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 40px;
	float: left;
	width: 83.89px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-discount[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 42px;
	float: left;
	width: 110.86px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total[data-v-8d98596c]
	{
	margin-top: 17px;
	margin-left: 45px;
	float: left;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total .tooltip-box[data-v-8d98596c]
	{
	margin-top: -44px;
	margin-left: -125px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total h5[data-v-8d98596c]
	{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total h5 i[data-v-8d98596c]
	{
	margin-left: 4px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total p[data-v-8d98596c]
	{
	color: #d0021b;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-total p span[data-v-8d98596c]
	{
	color: black;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-minus[data-v-8d98596c],
	.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-plus[data-v-8d98596c],
	.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-equal[data-v-8d98596c]
	{
	width: 29px;
	height: 29px;
	float: left;
	margin-top: 36px;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-minus[data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjkgMjkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5IDI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiNEOEQ4RDg7fQoJLnN0MntjbGlwLXBhdGg6dXJsKCNTVkdJRF82Xyk7fQoJLnN0M3tjbGlwLXBhdGg6dXJsKCNTVkdJRF84Xyk7ZmlsbDojRkZGRkZGO30KPC9zdHlsZT4KPGc+Cgk8Zz4KCQk8ZGVmcz4KCQkJPGNpcmNsZSBpZD0iU1ZHSURfMV8iIGN4PSIxNC41IiBjeT0iMTQuNSIgcj0iMTQuNSIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDAiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTEwNzkiIHk9Ii03NTEiIHdpZHRoPSIxOTIwIiBoZWlnaHQ9IjE1MzAiLz4KCQkJPC9kZWZzPgoJCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzNfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJCTwvY2xpcFBhdGg+CgkJCTxyZWN0IHg9Ii01IiB5PSItNSIgY2xhc3M9InN0MSIgd2lkdGg9IjM5IiBoZWlnaHQ9IjM5Ii8+CgkJPC9nPgoJPC9nPgoJPGc+CgkJPGRlZnM+CgkJCTxyZWN0IGlkPSJTVkdJRF81XyIgeD0iNyIgeT0iMTMiIHdpZHRoPSIxNSIgaGVpZ2h0PSIzIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNl8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF81XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0MiI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzdfIiB4PSItMTA3OSIgeT0iLTc1MSIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTUzMCIvPgoJCQk8L2RlZnM+CgkJCTxjbGlwUGF0aCBpZD0iU1ZHSURfOF8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfN18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQkJPC9jbGlwUGF0aD4KCQkJPHJlY3QgeD0iMiIgeT0iOCIgY2xhc3M9InN0MyIgd2lkdGg9IjI1IiBoZWlnaHQ9IjEzIi8+CgkJPC9nPgoJPC9nPgo8L2c+Cjwvc3ZnPgo=)
		no-repeat;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-plus[data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjkgMjkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5IDI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOiNEOEQ4RDg7fQoJLnN0MntjbGlwLXBhdGg6dXJsKCNTVkdJRF82Xyk7fQoJLnN0M3tjbGlwLXBhdGg6dXJsKCNTVkdJRF84Xyk7ZmlsbDojRkZGRkZGO30KCS5zdDR7Y2xpcC1wYXRoOnVybCgjU1ZHSURfMTBfKTt9Cgkuc3Q1e2NsaXAtcGF0aDp1cmwoI1NWR0lEXzEyXyk7ZmlsbDojRkZGRkZGO30KPC9zdHlsZT4KPGc+Cgk8Zz4KCQk8ZGVmcz4KCQkJPGNpcmNsZSBpZD0iU1ZHSURfMV8iIGN4PSIxNC41IiBjeT0iMTQuNSIgcj0iMTQuNSIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDAiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF8zXyIgeD0iLTg1MS44IiB5PSItODk3IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxODkwIi8+CgkJCTwvZGVmcz4KCQkJPGNsaXBQYXRoIGlkPSJTVkdJRF80XyI+CgkJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8zXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8cmVjdCB4PSItNSIgeT0iLTUiIGNsYXNzPSJzdDEiIHdpZHRoPSIzOSIgaGVpZ2h0PSIzOSIvPgoJCTwvZz4KCTwvZz4KCTxnPgoJCTxkZWZzPgoJCQk8cmVjdCBpZD0iU1ZHSURfNV8iIHg9IjciIHk9IjEzIiB3aWR0aD0iMTUiIGhlaWdodD0iMyIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzZfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfNV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxnIGNsYXNzPSJzdDIiPgoJCQk8ZGVmcz4KCQkJCTxyZWN0IGlkPSJTVkdJRF83XyIgeD0iLTg1MS44IiB5PSItODk3IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxODkwIi8+CgkJCTwvZGVmcz4KCQkJPGNsaXBQYXRoIGlkPSJTVkdJRF84XyI+CgkJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF83XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8cmVjdCB4PSIyIiB5PSI4IiBjbGFzcz0ic3QzIiB3aWR0aD0iMjUiIGhlaWdodD0iMTMiLz4KCQk8L2c+Cgk8L2c+Cgk8Zz4KCQk8ZGVmcz4KCQkJPHJlY3QgaWQ9IlNWR0lEXzlfIiB4PSIxMyIgeT0iNyIgd2lkdGg9IjMiIGhlaWdodD0iMTUiLz4KCQk8L2RlZnM+CgkJPGNsaXBQYXRoIGlkPSJTVkdJRF8xMF8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF85XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0NCI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzExXyIgeD0iLTg1MS44IiB5PSItODk3IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxODkwIi8+CgkJCTwvZGVmcz4KCQkJPGNsaXBQYXRoIGlkPSJTVkdJRF8xMl8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMTFfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJCTwvY2xpcFBhdGg+CgkJCTxyZWN0IHg9IjgiIHk9IjIiIGNsYXNzPSJzdDUiIHdpZHRoPSIxMyIgaGVpZ2h0PSIyNSIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment-final__container .payment-final__summary .payment-final__summary-price .payment-final__summary-price-equal[data-v-8d98596c]
	{
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjkgMjkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5IDI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTt9Cgkuc3Qye2NsaXAtcGF0aDp1cmwoI1NWR0lEXzZfKTt9Cgkuc3Qze2NsaXAtcGF0aDp1cmwoI1NWR0lEXzhfKTtmaWxsOiNGRkZGRkY7fQoJLnN0NHtjbGlwLXBhdGg6dXJsKCNTVkdJRF8xMF8pO30KCS5zdDV7Y2xpcC1wYXRoOnVybCgjU1ZHSURfMTJfKTtmaWxsOiNGRkZGRkY7fQo8L3N0eWxlPgo8Zz4KCTxnPgoJCTxkZWZzPgoJCQk8Y2lyY2xlIGlkPSJTVkdJRF8xXyIgY3g9IjE0LjUiIGN5PSIxNC41IiByPSIxNC41Ii8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfMl8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0MCI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzNfIiB4PSItMTIyNyIgeT0iLTg5NyIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMTg5MCIvPgoJCQk8L2RlZnM+CgkJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNF8iPgoJCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfM18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQkJPC9jbGlwUGF0aD4KCQkJPHJlY3QgeD0iLTUiIHk9Ii01IiBjbGFzcz0ic3QxIiB3aWR0aD0iMzkiIGhlaWdodD0iMzkiLz4KCQk8L2c+Cgk8L2c+Cgk8Zz4KCQk8ZGVmcz4KCQkJPHJlY3QgaWQ9IlNWR0lEXzVfIiB4PSI3IiB5PSIxMCIgd2lkdGg9IjE1IiBoZWlnaHQ9IjMiLz4KCQk8L2RlZnM+CgkJPGNsaXBQYXRoIGlkPSJTVkdJRF82XyI+CgkJCTx1c2UgeGxpbms6aHJlZj0iI1NWR0lEXzVfIiAgc3R5bGU9Im92ZXJmbG93OnZpc2libGU7Ii8+CgkJPC9jbGlwUGF0aD4KCQk8ZyBjbGFzcz0ic3QyIj4KCQkJPGRlZnM+CgkJCQk8cmVjdCBpZD0iU1ZHSURfN18iIHg9Ii0xMjI3IiB5PSItODk3IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxODkwIi8+CgkJCTwvZGVmcz4KCQkJPGNsaXBQYXRoIGlkPSJTVkdJRF84XyI+CgkJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF83XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8cmVjdCB4PSIyIiB5PSI1IiBjbGFzcz0ic3QzIiB3aWR0aD0iMjUiIGhlaWdodD0iMTMiLz4KCQk8L2c+Cgk8L2c+Cgk8Zz4KCQk8ZGVmcz4KCQkJPHJlY3QgaWQ9IlNWR0lEXzlfIiB4PSI3IiB5PSIxNiIgd2lkdGg9IjE1IiBoZWlnaHQ9IjMiLz4KCQk8L2RlZnM+CgkJPGNsaXBQYXRoIGlkPSJTVkdJRF8xMF8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF85XyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGcgY2xhc3M9InN0NCI+CgkJCTxkZWZzPgoJCQkJPHJlY3QgaWQ9IlNWR0lEXzExXyIgeD0iLTEyMjciIHk9Ii04OTciIHdpZHRoPSIxOTIwIiBoZWlnaHQ9IjE4OTAiLz4KCQkJPC9kZWZzPgoJCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzEyXyI+CgkJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQkJPC9jbGlwUGF0aD4KCQkJPHJlY3QgeD0iMiIgeT0iMTEiIGNsYXNzPSJzdDUiIHdpZHRoPSIyNSIgaGVpZ2h0PSIxMyIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8L3N2Zz4K)
		no-repeat;
}

.payment__container .payment-final__container .payment-final__shipping[data-v-8d98596c]
	{
	width: 978px;
	height: 58px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 10px;
	border: 1px solid #e1dedf;
	line-height: 60px;
	color: #4bb8ce;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
}

.payment__container .payment-final__container .payment-final__check[data-v-8d98596c]
	{
	width: 978px;
	height: 118px;
	border: 1px solid #e1dedf;
	margin-top: 40px;
	margin-bottom: 60px;
	margin-left: auto;
	margin-right: auto;
}

.payment__container .payment-final__container .payment-final__check .payment-final__check-title[data-v-8d98596c]
	{
	overflow: hidden;
	margin-top: 21px;
	margin-left: 20px;
}

.payment__container .payment-final__container .payment-final__check .payment-final__check-title .payment-final__check-icon[data-v-8d98596c]
	{
	width: 20px;
	height: 20px;
	background-color: black;
	border-radius: 50%;
	margin-top: 3px;
	float: left;
	color: white;
	line-height: 20px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
}

.payment__container .payment-final__container .payment-final__check .payment-final__check-title h5[data-v-8d98596c]
	{
	font-size: 16px;
	line-height: 24px;
	margin-left: 7px;
	float: left;
}

.payment__container .payment-final__container .payment-final__check .payment-final__check-content[data-v-8d98596c]
	{
	margin-left: 20px;
	margin-top: 13px;
	font-size: 13px;
	line-height: 20px;
}

.payment__container .payment__finish .payment-finish__img[data-v-8d98596c]
	{
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 88px;
}

.payment__container .payment__finish h5[data-v-8d98596c] {
	margin-top: 16px;
	font-size: 18px;
	color: #212121;
	text-align: center;
}

.payment__container .payment__finish .payment-finish__desc[data-v-8d98596c]
	{
	text-align: center;
	margin-top: 4px;
	color: #212121;
}

.payment__container .payment__finish .payment-finish__shippingdate[data-v-8d98596c]
	{
	margin-top: 16px;
	color: #4bb8ce;
	text-align: center;
}

.payment__container .payment__finish .payment-finish__table[data-v-8d98596c]
	{
	width: 312px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 40px;
	border-top: 1px solid #e0e0e0;
}

.payment__container .payment__finish .payment-finish__table .list[data-v-8d98596c]
	{
	width: 100%;
	height: 40px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	border-bottom: 1px solid #eeeeee;
}

.payment__container .payment__finish .payment-finish__table .list .left[data-v-8d98596c],
	.payment__container .payment__finish .payment-finish__table .list .right[data-v-8d98596c]
	{
	font-size: 12px;
	color: #212121;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.payment__container .payment__finish .payment-finish__table .list .left i[data-v-8d98596c],
	.payment__container .payment__finish .payment-finish__table .list .right i[data-v-8d98596c]
	{
	margin-left: 4px;
}

.payment__container .payment__finish .payment-finish__table .list .left[data-v-8d98596c]
	{
	margin-left: 16px;
}

.payment__container .payment__finish .payment-finish__table .list .right[data-v-8d98596c]
	{
	margin-left: auto;
	margin-right: 16px;
}

.payment__container .payment__finish .payment-finish__table .tooltip-box[data-v-8d98596c]
	{
	margin-top: -45px;
}

.payment__container .payment__finish .payment-finish__direct-alert[data-v-8d98596c]
	{
	margin-top: 8px;
	width: 312px;
	margin-left: auto;
	margin-right: auto;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

.payment__container .payment__finish .payment-finish__direct-alert img[data-v-8d98596c]
	{
	margin-top: 3px;
}

.payment__container .payment__finish .payment-finish__direct-alert p[data-v-8d98596c]
	{
	font-size: 12px;
	color: #cf001a;
	margin-left: 4px;
}

.payment__container .payment__finish button[data-v-8d98596c] {
	margin-top: 40px;
	width: 160px;
	height: 40px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	color: white;
	border: none;
	background-color: black;
	border-radius: 4px;
	font-size: 13px;
	font-weight: bold;
	cursor: pointer;
}
</style>
<style type="text/css">
.tooltip[data-v-61f77a8f] {
	padding: 7px 8px 7px 16px;
	background-color: rgba(0, 0, 0, 0.85);
	border-radius: 4px;
	display: -webkit-inline-box;
	display: -ms-inline-flexbox;
	display: inline-flex;
	position: absolute;
	opacity: 0;
	-webkit-transform: translate3d(0, 6px, 0);
	transform: translate3d(0, 6px, 0);
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.tooltip p[data-v-61f77a8f] {
	font-size: 12px;
	color: white;
	margin-right: 16px;
	white-space: pre;
}

.tooltip i[data-v-61f77a8f] {
	width: 16px;
	height: 16px;
	background:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzLjQwNCAzLjQwNCkiIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHJlY3QgdHJhbnNmb3JtPSJyb3RhdGUoLTQ1IDQuNTk2IDQuNTk2KSIgeD0iNC4wOTYiIHk9Ii0xLjQwNCIgd2lkdGg9IjEiIGhlaWdodD0iMTIiIHJ4PSIuNSIvPgogICAgICAgIDxyZWN0IHRyYW5zZm9ybT0icm90YXRlKDQ1IDQuNTk2IDQuNTk2KSIgeD0iNC4wOTYiIHk9Ii0xLjQwNCIgd2lkdGg9IjEiIGhlaWdodD0iMTIiIHJ4PSIuNSIvPgogICAgPC9nPgo8L3N2Zz4K)
		no-repeat;
	background-size: cover;
	margin-top: 2px;
	cursor: pointer;
}

.tooltip div[data-v-61f77a8f] {
	top: 100%;
	left: 34px;
	border: solid transparent;
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-top-color: rgba(0, 0, 0, 0.85);
	border-width: 5px;
	margin-left: -5px;
}

.fade[data-v-61f77a8f] {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}
</style>
<style type="text/css">
.checkbox[data-v-86546836] {
	width: 21px;
	height: 21px;
	border: 1.5px solid #e0e0e0;
	border-radius: 50%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	cursor: pointer;
}

.checkbox div[data-v-86546836] {
	width: 12px;
	height: 12px;
	border-radius: 50%;
	background-color: #ed0000;
}

.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  top: -5px;
  right: 105%;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
.car2{
	background-image:url(./../images/car1.svg);
	background-size:cover;
	width:100px;
	height:70px;
}
.tooltip:hover .tooltiptext {
 visibility: visible;
}
img{background-color: ="#b8b8b8";}

#box4{margin-top:20px;  width: 150px; height: 50px}/* 날짜 선탣 아이콘 */
#box1{margin-top:20px; padding-left : 20px; width: 300px; height: 50px}/* 날짜 선탣 아이콘 */
#box2{float: left; width: 200px; height: 19px}/* 도착희망일 */
#box3{padding-left:150px width: px; height: 19px}/* 날짜 선탣 아이콘 */
.payment-shipping__time-title{padding-top:25px;}
.radio1{font-size: 16px; width: 230px; height: 30px; color:	#000000;}
.payment-shipping__time-title{font-weight: bolder; color: 	#000000;}
.payment-shipping__date-title{font-weight: bolder; color: 	#000000;}
/*배송방법 라디오 해야함  */
</style>

<script type="text/javascript">
$(document).ready(function() {
			$('#tooltip').hide();

			
			var managers = ['yusin', 'kim9', 'soon'];
			$.each(managers, function(index, item){
				console.log(item);
				var optvalue = '<option value="' + item + '">' + item + '</option>' ;
				$('#manager').append(optvalue);
			});	
			
			$("#box1").datepicker({dateFormat : "yy/mm/dd"}); // 날짜 선택기
			
		});
			function myFunction() {
				  alert("날짜를 선택해주세요.");
				}
</script>
</head>
<body style="overflow: auto; top: unset;" class="">
					<div id="app">
    	<div id="modals-container">
    	</div>
    	<div class="app__desktop">
        	<div class="app__desktop-scroll">
            	<div>
                	<!--
                	-->
                	<jsp:include page="./../common/common3_header.jsp"></jsp:include>
				<div data-v-8d98596c="" class="payment__container">
					<div data-v-8d98596c="" id="modals-container"></div>
					<div data-v-8d98596c="">
						<p data-v-8d98596c="" class="payment__container-title">주문하기</p>
						<article data-v-8d98596c="" class="payment__status-box">
							<div data-v-8d98596c="" class="payment-status__centered">
								<i data-v-8d98596c="" iconactive="true"
									class="payment-status__icon-step1"></i>
								<p data-v-8d98596c="" textactive="true"
									class="payment-status__text">01. 배송지 정보</p>
								<i data-v-8d98596c="" iconactive="true"
									class="payment-status__icon-arrow"></i> <i data-v-8d98596c=""
									iconactive="true" class="payment-status__icon-step2"></i>
								<p data-v-8d98596c="" textactive="true"
									class="payment-status__text">02. 도착 희망일</p>
								<i data-v-8d98596c="" iconactive="false"
									class="payment-status__icon-arrow"></i> <i data-v-8d98596c=""
									iconactive="false" class="payment-status__icon-step4"></i>
								<p data-v-8d98596c="" textactive="false"
									class="payment-status__text">03. 주문 확정</p>
							</div>
						</article>
						<div data-v-8d98596c="">
							<section data-v-8d98596c=""
								class="payment-shipping__datetime-container">
								<div data-v-8d98596c="" class="payment-shipping__date-box">
									<div id="box2">
									<h6 data-v-8d98596c="" class="payment-shipping__date-title">
										<p>도착 희망일</p>
									</h6>
									</div>
									<div class="payment-shipping__date-button1" >
									<form action="#" method="post">
										<div id="box3">
										<input type="text" id="box1" value="" placeholder="날짜를 선택하세요.">
										<input type="submit" value="날짜설정" id="box4" onclick="myFunction()">
										</div>
										<p data-v-8d98596c="" class="payment-shipping__date-text" >
											</p>
										<i data-v-8d98596c="" class="payment-shipping__date-icon"></i>
									</form>
									</div>
								</div>
					<div data-v-8d98596c="" class="payment-shipping__time-box">
						<h6 data-v-8d98596c="" class="payment-shipping__time-title">배송
							방법</h6>
						<div data-v-8d98596c="" class="payment-shipping__time-content">
							<div data-v-8d98596c="">
								<form>
								  <input type="radio"  id="html" name="fav_language" value="HTML">  
							      <label for="html"><P class="radio1">새벽배송 (오전 7시 전 도착)</P></label><br /> <br />  
								  
								  <input type="radio" id="css" name="fav_language" value="CSS"> 
								  <label for="css"><P class="radio1">당일배송 (오후 2시 - 7시 도착)</P></label><br />
								</form>

							</div>
						</div>
					</div>
							</section>
					</div>
							<section data-v-8d98596c=""
								class="payment-shipping__final-container">
								<button data-v-8d98596c="" activated="false" disabled="disabled"
									class="payment-shipping__freshplan-deactive">
									<div data-v-8d98596c=""
										class="payment-shipping__freshplan-left">
										<div class="car2">
										</div>
										<h3 data-v-8d98596c=""
											class="payment-shipping__freshplan-title" >
											신선플랜 <a href="https://www.jeongyookgak.com/eventdetail?target=201805_event_freshplan"><i data-v-8d98596c="" id="freshplan__help"></i></a>
										</h3>
									</div>
									<div data-v-8d98596c=""
										class="payment-shipping__freshplan-right">
										<p data-v-8d98596c="" class="payment-shipping__freshplan-desc">
											이번 주문 배송비만으로<br data-v-8d98596c="">한달 간 3번 더 무료배송! (즉시
											적용)
										</p>
										<p data-v-8d98596c="" class="payment-shipping__freshplan-sub"
											style="margin-top: 21px;">첫구매 무료배송이 적용되었습니다.</p>
									</div>
								</button>
								<article data-v-8d98596c="" activated="default"
									class="payment-shipping__summary">
									<div data-v-8d98596c=""
										class="payment-shipping__summary-default">
										<div data-v-8d98596c="">
											<h5 data-v-8d98596c="">기본 배송비</h5>
											<p data-v-8d98596c="">
												3500<span data-v-8d98596c="">원</span>
											</p>
										</div>
										<i data-v-8d98596c=""
											class="payment-shipping__summary-default-minus"></i>
										<div data-v-8d98596c="">
											<h5 data-v-8d98596c="">신선할인</h5>
											<p data-v-8d98596c="">
												3500<span data-v-8d98596c="">원</span>
											</p>
										</div>
										<i data-v-8d98596c=""
											class="payment-shipping__summary-default-equal"></i>
										<div data-v-8d98596c="">
											<h5 data-v-8d98596c="">배송비</h5>
											<p data-v-8d98596c="">
												<b data-v-8d98596c="" style="color: rgb(208, 2, 27);">0</b><span
													data-v-8d98596c="">원</span>
											</p>
										</div>
									</div>
								</article>
							</section>
							<div data-v-8d98596c="" class="payment-step__area">
							 <a href="http://localhost:8990/WebStudent/shopping.project/Joo1.jsp">
								<button data-v-8d98596c="" class="payment__btn background__gray">이전
									단계</button>
									</a>
								 <a href="./../figure/cart/orderPage.jsp">
								<button data-v-8d98596c=""
									class="payment__btn background__black">다음 단계</button>
									</a>
							</div>
						</div>

						<!---->
						<!---->
						<!---->
					</div>
					<jsp:include page="./../common/common3_footer.jsp"></jsp:include>
				</div>
			</div>
			</div>
			</div>
</body>
</html>
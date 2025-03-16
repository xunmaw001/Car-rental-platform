<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>入口页</title>

	<link href="${pageContext.request.contextPath}/resources/xznstatic/css/icon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/cryptocoins.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/cryptocoins-colors.css">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/jquery-ui.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/slick.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/xznstatic/css/morris.css" rel="stylesheet">
</head>
<style>

</style>

<body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
	<aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
        <div class="logo-sn ms-d-block-lg">
            <a class="pl-0 ml-0 text-center" href="#"></a>
            <a href="#" class="text-center ms-logo-img-link"><img src="${pageContext.request.contextPath}/resources/xznstatic/assets/img/doctor-3.jpg" alt="logo"></a>
            <h5 class="text-center text-white mt-2" id="uName"></h5>
        </div>
        <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
            <li class="menu-item">
                <a href="${pageContext.request.contextPath}/jsp/modules/home/home.jsp" onclick="navClick(this);return false;"><span><i class="material-icons fs-16">widgets</i>主页</span></a>
            </li>
        </ul>
	</aside>
	
	<main class="body-content">
        <nav class="navbar ms-navbar">
            <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft"><span
                    class="ms-toggler-bar bg-white"></span><span class="ms-toggler-bar bg-white"></span><span
                    class="ms-toggler-bar bg-white"></span></div>
            <div class="logo-sn logo-sm ms-d-block-sm">
                <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="#"></a>
            </div>
            <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                <li class="ms-nav-item ms-nav-user dropdown">
                    <a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="ms-user-img ms-img-round float-right" src="${pageContext.request.contextPath}/resources/xznstatic/assets/img/doctor-3.jpg" alt="people">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right user-dropdown" aria-labelledby="userDropdown">
                        <li class="dropdown-menu-header">
                            <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled" id="welcome"></span></h6>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-menu-footer"><a class="media fs-14 p-2" href="#" onclick="toFront()"><span><i class="flaticon-security mr-2"></i>跳到前台</span></a></li>
                        <li class="dropdown-menu-footer"><a class="media fs-14 p-2" href="#" onclick="logout()"><span><i class="flaticon-shut-down mr-2"></i>退出</span></a></li>
                    </ul>
                </li>
            </ul>
            <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options">
                <span class="ms-toggler-bar bg-white"></span>
                <span class="ms-toggler-bar bg-white"></span><span class="ms-toggler-bar bg-white"></span>
            </div>
        </nav>
        <div class="ms-content-wrapper">
            <div class="row">
                <iframe id="mainIframe" src="${pageContext.request.contextPath}/jsp/modules/home/home.jsp" width="100%" frameborder="0" scrolling="auto"></iframe>
            </div>
        </div>
	</main>

	<script src="${pageContext.request.contextPath}/resources/xznstatic/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/d3.v3.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/topojson.v1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/datamaps.all.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/moment.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/jquery.webticker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/Chart.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/framework.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/settings.js"></script>

	<script>
		<%@ include file = "jsp/utils/menu.jsp" %>
		<%@ include file = "jsp/static/setMenu.js" %>
		<%@ include file = "jsp/utils/baseUrl.jsp" %>
		// 用户登出
		<%@ include file = "jsp/static/logout.jsp" %>

		$(document).ready(function () {
			//我的后台,session信息转移
			if (window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null') {
				if (window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") ==
					'null') {
					window.sessionStorage.setItem("token", window.localStorage.getItem("Token"));
					window.sessionStorage.setItem("role", window.localStorage.getItem("role"));
					window.sessionStorage.setItem("accountTableName", window.localStorage.getItem("sessionTable"));
					window.sessionStorage.setItem("username", window.localStorage.getItem("adminName"));
				}
			}

			$('#uName').text(window.sessionStorage.getItem('username'));
			$('#welcome').text('欢迎您,' + window.sessionStorage.getItem('username'));
			var token = window.sessionStorage.getItem("token");
			if (token == "null" || token == null) {
				alert("请登录后再操作");
				window.location.href = ("jsp/login.jsp");
			}
			setMenu();
		});
	</script>
</body>

</html>
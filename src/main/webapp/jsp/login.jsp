<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>汽车租赁平台</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/all.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/flaticon.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/cryptocoins.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/cryptocoins-colors.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/jquery-ui.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/style.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/xznstatic/css/icon.css">

  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
</head>

<body class="ms-body ms-primary-theme ms-logged-out">
	<main class="body-content">
        <nav class="navbar ms-navbar">
            <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                <li class="ms-nav-item ms-search-form pb-0 py-0">
                </li>
                <li class="ms-nav-item"><a href="#" class="btn btn-primary mt-0">汽车租赁平台</a></li>
            </ul>
            <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options"><span class="ms-toggler-bar bg-white"></span><span class="ms-toggler-bar bg-white"></span><span class="ms-toggler-bar bg-white"></span></div>
        </nav>
        <div class="ms-content-wrapper ms-auth">
            <div class="ms-auth-container">
                <div class="ms-auth-col">
                    <div class="ms-auth-bg"></div>
                </div>
                <div class="ms-auth-col">
                    <div class="ms-auth-form">
                        <form id="loginForm" action="" method="post" class="needs-validation" novalidate="">
                            <h1 style="margin-bottom: 30px;">登 录</h1>
                            <div class="mb-3">
                                <div class="input-group">
									<input class="form-control" type="text" placeholder="用户名" id="username" name="username" required>
                                </div>
                            </div>
                            <div class="mb-2">
                                <div class="input-group">
									<input class="form-control" type="password" placeholder="密码" name="password" required>
                                </div>
                            </div>
                            <div class="form-group" id="roleRadio">
                            	
                            </div>
                            <button id="submitBtn" class="btn btn-primary mt-4 d-block w-100" type="submit" onclick="login()">登 录</button>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/resources/xznstatic/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/framework.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/settings.js"></script>
	
	<script type="text/javascript">
		
		<%@ include file="utils/menu.jsp"%>
		
		<%@ include file="utils/baseUrl.jsp"%>

		var role = "";
		var accountTableName = "";
		//渲染角色选择
		function setRoleOption() {
			var hm = "";
			for (var i = 0; i < menus.length; i++) {
				hm += '<p><label class="ms-checkbox-wrap"><input name="chk" class="form-check-input" type="radio" value="' + menus[i].roleName + '" onclick="checkRole(\'' + menus[i].roleName + '\',\'' + menus[i].tableName + '\')"><i class="ms-checkbox-check"></i></label><span>' + menus[i].roleName + '</span></p>';
			}
			$('#roleRadio').html(hm);
		}
		function checkRole(roleName, tableName) {			
			role = roleName;
			$('#loginForm').attr('action', baseUrl + tableName + '/login');
			accountTableName = tableName;
		}
		function login() {
			$("#loginForm").ajaxForm(function(res) {
				if (role == "" || role == null) {
					alert("请选择角色后再登录");
				} else {
					if (res.code == 0) {
						alert("登录成功");
						var username = $('#username').val();
						window.sessionStorage.setItem('accountTableName',accountTableName)
						window.sessionStorage.setItem('username',username);
						window.sessionStorage.setItem('token', res.token);
						window.sessionStorage.setItem('role', role);
						window.location.href = "${pageContext.request.contextPath}/index.jsp";
					} else {
						alert(res.msg);
					}
				}
			});
		}
		function ready() {
			setRoleOption();
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>
</body>

</html>

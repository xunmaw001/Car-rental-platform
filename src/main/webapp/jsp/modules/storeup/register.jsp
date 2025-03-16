<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>收藏表注册</title>
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

  <style type="text/css">
	.error{ color: red; }
  </style>
</head>

<body class="ms-body ms-primary-theme ms-logged-out">
	<main class="body-content">
        <nav class="navbar ms-navbar">
            <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                <li class="ms-nav-item ms-search-form pb-0 py-0">
                </li>
                <li class="ms-nav-item"><a href="#" class="btn btn-primary mt-0"></a></li>
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
                        <form id="registerForm" action="" method="post" class="needs-validation" novalidate="">
                            <h1 style="margin-bottom: 30px;">收藏表注册</h1>
                            <button id="submitBtn" class="btn btn-primary mt-4 d-block w-100" type="submit">注 册</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

	<script src="${pageContext.request.contextPath}/resources/xznstatic/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/framework.js"></script>
    <script src="${pageContext.request.contextPath}/resources/xznstatic/js/settings.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>

	<script type="text/javascript">
		
		<%@ include file="../../utils/menu.jsp"%>
		
		<%@ include file="../../utils/baseUrl.jsp"%>

		// 表单校验
		function validform() {
			return $("#registerForm").validate({ 
				rules: {
							refid: {
				},
										tablename: {
				},
										name: {
					required: true,
				},
										picture: {
					required: true,
				},
									},
				messages: {
					refid: {
					},
					tablename: {
					},
					name: {
						required: "收藏名称不能为空",
					},
					picture: {
						required: "收藏图片不能为空",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
				var length = value.length;
				var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
				return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}

		// 表单提交
		function submit() {
			if(validform()) {
				let data = {};
				let value = $('#registerForm').serializeArray();
				$.each(value, function (index, item) { 
					data[item.name] = item.value;
				});
				let json = JSON.stringify(data);
				$.ajax({ 
					type: "POST",
					url: baseUrl + "storeup/register",
					contentType: "application/json",
					data:json,
					beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
					success: function(res){    
						if(res.code == 0){
						alert("注册成功!");
						window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
						}else if(res.code == 401){
							<%@ include file="../../static/toLogin.jsp"%> 	
						}else{
							alert(res.msg)
						}
					},
				});      
			}else {
				alert("表单未填完整或有错误");
			}
		}    

		function ready() {
			addValidation();
			//注册表单验证
		    $(validform());
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				submit();
			});
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>
</body>

</html>

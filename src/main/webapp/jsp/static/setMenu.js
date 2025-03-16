function setMenu(){
	if(window.sessionStorage.getItem('role') != '管理员'){
		var accountTableName = window.sessionStorage.getItem('accountTableName');
		$('#side-nav-accordion').append('<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#center" aria-expanded="false" aria-controls="doctor"><span><i class="fas fa-stethoscope"></i>个人中心</span></a><ul id="center" class="collapse" aria-labelledby="doctor" data-parent="#side-nav-accordion"><li><a href="' + baseUrl + 'jsp/modules/center/updatePassword.jsp" onclick="navClick(this);return false;">修改密码</a></li><li><a href="${pageContext.request.contextPath}/jsp/modules/' + accountTableName + '/add-or-update.jsp" onclick="navClick(this);return false;">个人信息</a></li></ul></li>');
		http(accountTableName+'/session','GET',{},(res)=>{
			if(res.code == 0){
				// window.sessionStorage.setItem('id',res.data.id);
				window.sessionStorage.setItem('onlyme',true);
			}					
		});			
	} else {
		$('#side-nav-accordion').append('<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#center" aria-expanded="false" aria-controls="doctor"><span><i class="fas fa-stethoscope"></i>个人中心</span></a><ul id="center" class="collapse" aria-labelledby="doctor" data-parent="#side-nav-accordion"><li><a href="' + baseUrl + 'jsp/modules/center/updatePassword.jsp" onclick="navClick(this);return false;">修改密码</a></li><li><a href="' + baseUrl + 'jsp/modules/center/info.jsp" onclick="navClick(this);return false;">个人信息</a></li></ul></li>');
	}
	
	var role = window.sessionStorage.getItem('role');
	var menusHtml = '';
	for(var i=0;i<menus.length;i++){
		// 找到当前登录角色的菜单
		if(menus[i].roleName == role){
			var menuHtml = '';
			var menu = menus[i].backMenu;
			for(var j=0;j<menu.length;j++){ 
				// 一级菜单
				menuHtml += '<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#center' + j + '" aria-expanded="false" aria-controls="doctor"><span><i class="fas fa-stethoscope"></i>' + menu[j].menu + '</span></a><ul id="center' + j + '" class="collapse" aria-labelledby="doctor" data-parent="#side-nav-accordion">';
				
				var menuSubHtml = '';
				var secondMenuName = "";
				var menuChild = menu[j].child;
				for(var k=0;k<menuChild.length;k++){  
					// 二级菜单
					if(secondMenuName == menuChild[k].tableName && secondMenuName != ""){
						menuSubHtml += '<li><a href="${pageContext.request.contextPath}/jsp/modules/' + menuChild[k].tableName + '/graph.jsp" onclick="navClick(this);return false;">' + menuChild[k].menu + '</a></li>';
					}else{
						menuSubHtml += '<li><a href="${pageContext.request.contextPath}/jsp/modules/' + menuChild[k].tableName + '/list.jsp" onclick="navClick(this);return false;">' + menuChild[k].menu + '</a></li>';
						secondMenuName = menuChild[k].tableName;
					}
				}
				menuHtml += menuSubHtml + '</ul></li>';
			}
			menusHtml += menuHtml;
		}
	}
	$('#side-nav-accordion').append(menusHtml);
	if(hasMessage != null && hasMessage == '是' && role == '管理员'){
		$('#side-nav-accordion').append('<li class="menu-item"><a href="#" class="has-chevron" data-toggle="collapse" data-target="#center" aria-expanded="false" aria-controls="doctor"><span><i class="fas fa-stethoscope"></i>留言管理</span></a><ul id="center" class="collapse" aria-labelledby="doctor" data-parent="#side-nav-accordion"><li><a href="' + baseUrl + 'jsp/modules/messages/list.jsp" onclick="navClick(this);return false;">留言列表</a></li></ul></li>');
	}
}

window.navClick = function(obj) {
	$('iframe').attr('src', obj.href);
}
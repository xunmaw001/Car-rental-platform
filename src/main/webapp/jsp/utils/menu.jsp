<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"会员","menuJump":"列表","tableName":"huiyuan"}],"menu":"会员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车分类","menuJump":"列表","tableName":"qichefenlei"}],"menu":"汽车分类管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车信息","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息管理"},{"child":[{"buttons":["修改","删除","支付"],"menu":"充值信息","menuJump":"列表","tableName":"chongzhixinxi"}],"menu":"充值信息管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"租赁订单","menuJump":"列表","tableName":"zulindingdan"}],"menu":"租赁订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"会员订单","menuJump":"列表","tableName":"huiyuandingdan"}],"menu":"会员订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"用户还车","menuJump":"列表","tableName":"yonghuhaiche"}],"menu":"用户还车管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"会员还车","menuJump":"列表","tableName":"huiyuanhaiche"}],"menu":"会员还车管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看","删除","修改"],"menu":"客服管理","tableName":"kefuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","用户租赁","会员租赁"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","删除","支付","还车"],"menu":"租赁订单","menuJump":"列表","tableName":"zulindingdan"}],"menu":"租赁订单管理"},{"child":[{"buttons":["查看"],"menu":"用户还车","menuJump":"列表","tableName":"yonghuhaiche"}],"menu":"用户还车管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","用户租赁","会员租赁"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息模块"}],"roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","支付"],"menu":"充值信息","menuJump":"列表","tableName":"chongzhixinxi"}],"menu":"充值信息管理"},{"child":[{"buttons":["查看","支付","删除","还车"],"menu":"会员订单","menuJump":"列表","tableName":"huiyuandingdan"}],"menu":"会员订单管理"},{"child":[{"buttons":["查看"],"menu":"会员还车","menuJump":"列表","tableName":"huiyuanhaiche"}],"menu":"会员还车管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","用户租赁","会员租赁"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息模块"}],"roleName":"会员","tableName":"huiyuan"}];

var hasMessage = '';

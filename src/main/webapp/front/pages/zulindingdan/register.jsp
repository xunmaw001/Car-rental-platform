<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>注册</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/util.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/main.css">
</head>
<body>
  <div id="app">
    <div class="dowebok">
      <div class="container-login100">
        <div class="wrap-login100">
          <div class="login100-pic js-tilt" data-tilt="">
            <img src="../../xznstatic/img/img-01.png">
          </div>
  
          <form class="login100-form validate-form layui-form">
            <span class="login100-form-title">
              注 册
            </span>

            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="qichemingcheng" name="qichemingcheng" placeholder="请输入汽车名称" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="qicheleixing" name="qicheleixing" placeholder="请输入汽车类型" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="yanse" name="yanse" placeholder="请输入颜色" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="pinpai" name="pinpai" placeholder="请输入品牌" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="chepai" name="chepai" placeholder="请输入车牌" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="zulinjiage" name="zulinjiage" placeholder="请输入租赁价格" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="zulintianshu" name="zulintianshu" placeholder="请输入租赁天数" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="yonghuming" name="yonghuming" placeholder="请输入用户名" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input100 validate-input">
              <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 0;">
                  <input class="input100" type="text" id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input" lay-ignore>
                </div>
              </div>
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="container-login100-form-btn">
              <div class="layui-form-item" style="margin-bottom: 0;">
                <div class="layui-input-block" style="margin-left: 0;">
                  <button class="layui-btn btn-submit login100-form-btn" lay-submit lay-filter="register" lay-ignore>注册</button>
                </div>
              </div>
            </div>
  
            <div class="text-center p-t-12"></div>

            <div class="text-center p-t-136">
              <a class="txt2" href="javascript:window.location.href='../login/login.jsp'">
                已有账号？去登录
                <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>
  <script src="../../js/validate.js"></script>

  <script>
    layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var carousel = layui.carousel;
      var form = layui.form;
      var http = layui.http;
      var jquery = layui.jquery;

      var tablename = http.getParam('tablename');
              
      // 注册
      form.on('submit(register)', function(data) {
        data = data.field;
                                                                                                        if(!isIntNumer(data.zulinjiage)){
          layer.msg('租赁价格应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!data.zulintianshu){
          layer.msg('租赁天数不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
        if(!isIntNumer(data.zulintianshu)){
          layer.msg('租赁天数应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!isIntNumer(data.zongjiage)){
          layer.msg('总价格应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                                                                                                                        http.requestJson(tablename + '/register', 'post', data, function(res) {
          layer.msg('注册成功', {
            time: 2000,
            icon: 6
          },function(){
            // 路径访问设置
            window.location.href = '../login/login.jsp';
          });
        });
        return false
      });
    });
  </script>
</body>
</html>

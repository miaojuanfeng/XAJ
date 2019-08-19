<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="<c:url value="/assets/layui/css/layui.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/assets/static/css/style.css"></c:url>">
    <link rel="icon" href="<c:url value="/assets/static/image/code.png"></c:url>">
</head>
<body>

<div class="login-main">
    <header class="layui-elip">后台登录</header>
    <p><c:if test="${reason != null}">${reason}</c:if></p>
    <form class="layui-form" action="<c:url value="/cms/login"></c:url>" method="post">
        <div class="layui-input-inline">
            <input type="text" name="username" required lay-verify="required" placeholder="账号" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="password" name="password" required lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
        </div>
        <!-- div class="layui-input-inline">
        	<div class="layui-col-xs8">
            	<input type="text" name="password" required lay-verify="required" placeholder="验证码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-col-xs4">
            	<img width="100%" height="38" src="<c:url value="/assets/static/image/v.png"></c:url>" alt="">
            </div>
        </div -->
        <div class="layui-input-inline login-btn">
            <a type="submit" class="layui-btn">登录</a>
        </div>
        <hr/>
        <!--<div class="layui-input-inline">
            <a type="button" class="layui-btn layui-btn-primary">QQ登录</a>
        </div>
        <div class="layui-input-inline">
            <a type="button" class="layui-btn layui-btn-normal">微信登录</a>
        </div>-->
        <p>
        	<a href="javascript:;" class="fl">链活后台管理系统</a><a href="javascript:;" class="fr">V2.0.0</a>
        </p>
    </form>
</div>


<script src="<c:url value="/assets/layui/layui.js"></c:url>"></script>
<script type="text/javascript">
    layui.use(['form'], function () {

        // 操作对象
        var form = layui.form
                , $ = layui.jquery;

        // you code ...


    });
</script>
</body>
</html>
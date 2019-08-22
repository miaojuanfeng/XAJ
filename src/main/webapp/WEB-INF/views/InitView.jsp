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
    <link rel="stylesheet" href="<c:url value="/assets/static/css/xaj.css"></c:url>">
    <link rel="icon" href="<c:url value="/assets/static/image/code.png"></c:url>">
</head>
<body style="background:url(<c:url value="/assets/static/image/login_bg.jpg"></c:url>);background-size:cover;">

<div class="login-main">
    <header class="layui-elip" style="font-weight:300;">注册</header>
    <p><c:if test="${reason != null}">${reason}</c:if></p>
    <form class="layui-form" action="<c:url value="/cms/login"></c:url>" method="post" style="background-color:#fff;padding:20px;">
        <div class="layui-input-inline">
        	<p style="text-align:center;font-size:16px;">选择你关注的预报站，自定义你的主页！</p>
        </div>
        <div class="layui-input-inline">
        	<ul class="station-init">
        		<li><a class="station-a selected" href="javascript:;">宁都</a></li>
        		<li><a class="station-a" href="javascript:;">汾坑</a></li>
        		<li><a class="station-a" href="javascript:;">石城</a></li>
        		<li class="clear"></li>
        	</ul>
        	<style>
        		.station-init{
        			margin:40px 0;
        			
        		}
        		.station-init li{
        			float:left;
        			width:33%;
        			text-align:center;
        		}
        		.station-init li a{
        			width:70px;
        			height:70px;
        			line-height:70px;
        			margin:auto;
        			display:block;
        			border:1px solid #ccc;
        			border-radius:50%;
        		}
        		.station-init li a.selected{
        			background-color:#1E9FFF;
        			border-color:#1E9FFF;
        			color:#fff;
        		}
        	</style>
        	<script typet="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
        	<script>
        	$(document).ready(function(){
        		$(".station-a").click(function(){
        			if( $(this).hasClass("selected") ){
        				$(this).removeClass("selected");
        			}else{
        				$(this).addClass("selected");
        			}
        		});
        		
        	});
        	</script>
        </div>
        <div class="layui-input-inline">
		    <div class="layui-col-xs12 layui-col-sm12 layui-col-md12">
		    	<p style="text-align:center;"><a href="javascript:;" style="text-decoration:underline;">开始我的预报之旅!</a></p>
		    </div>
	    </div>
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
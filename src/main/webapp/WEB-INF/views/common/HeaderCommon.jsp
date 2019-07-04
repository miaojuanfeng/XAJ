<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="layui-header my-header">
        <a class="my-header-link" href="index.html">
            <!--<img class="my-header-logo" src="" alt="logo">-->
            <div class="my-header-logo">链活2.0后台管理系统</div>
        </a>
        <!-- div class="my-header-btn">
            <button class="layui-btn layui-btn-small btn-nav"><i class="layui-icon">&#xe65f;</i></button>
        </div -->

        <!-- 顶部左侧添加选项卡监听 -->
        <ul class="layui-nav" lay-filter="side-top-left">
        	<li class="layui-nav-item"><a href="<c:url value="/cms/station/1"></c:url>"><i class="layui-icon">&#xe621;</i>首页</a></li>
            <li class="layui-nav-item"><a href="<c:url value="/cms/calc/index"></c:url>"><i class="layui-icon">&#xe621;</i>按钮中心</a></li>
            <li class="layui-nav-item"><a href="javascript:;"><i class="layui-icon">&#xe621;</i>个人中心</a></li>
            <li class="layui-nav-item"><a href="<c:url value="/cms/step/index"></c:url>"><i class="layui-icon">&#xe621;</i>数据分步计算</a></li>
            <!-- li class="layui-nav-item">
                <a href="javascript:;"><i class="layui-icon">&#xe621;</i>基础中心</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></dd>
                    <dd><a href="javascript:;" href-url="demo/form.html"><i class="layui-icon">&#xe621;</i>表单</a></dd>
                </dl>
            </li-->
             
        </ul>

        <!-- 顶部右侧添加选项卡监听 -->
        <ul class="layui-nav my-header-user-nav" lay-filter="side-top-right">
            <!-- li class="layui-nav-item">
                <a class="name" href="javascript:;"><i class="layui-icon">&#xe629;</i>主题</a>
                <dl class="layui-nav-child">
                    <dd data-skin="0"><a href="javascript:;">默认</a></dd>
                    <dd data-skin="1"><a href="javascript:;">纯白</a></dd>
                    <dd data-skin="2"><a href="javascript:;">蓝白</a></dd>
                </dl>
            </li -->
            <li class="layui-nav-item">
            	<div id="time-week">${date}</div>
            </li>
            <li class="layui-nav-item">
			    <div id="notify"><a href="">预警消息<span class="layui-badge">9</span></a></div>
			</li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><img src="<c:url value="/assets/static/image/code.jpg"></c:url>" alt="logo"><span>M.J.F</span></a>
                <dl class="layui-nav-child">
                    <!-- dd><a href="javascript:;" href-url="demo/login.html"><i class="layui-icon">&#xe621;</i>登录页</a></dd>
                    <dd><a href="javascript:;" href-url="demo/map.html"><i class="layui-icon">&#xe621;</i>图表</a></dd-->
                    <dd><a href="/"><i class="layui-icon">&#x1006;</i>退出</a></dd>
                </dl>
            </li>
        </ul>

    </div>
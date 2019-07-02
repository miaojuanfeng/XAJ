<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="layui-side my-side">
    <div class="layui-side-scroll">
        <!-- 左侧主菜单添加选项卡监听 -->
        <ul class="layui-nav layui-nav-tree" lay-filter="side-main">
        	<li class="layui-nav-item">
                <a href="<c:url value="/cms/station/1"></c:url>"><i class="layui-icon">&#xe621;</i>用户列表1</a>
            </li>
            <li class="layui-nav-item">
                <a href="<c:url value="/cms/station/2"></c:url>"><i class="layui-icon">&#xe621;</i>用户列表2</a>
            </li>
        </ul>
    </div>
</div>
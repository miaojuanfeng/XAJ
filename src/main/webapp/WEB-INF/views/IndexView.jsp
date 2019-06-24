<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="iframe/common/HeaderCommon.jsp" %>
    <title>链活后台管理系统</title>
</head>
<body>

<!-- layout admin -->
<div class="layui-layout layui-layout-admin"> <!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
    <!-- header -->
    <div class="layui-header my-header">
        <a href="index.html">
            <!--<img class="my-header-logo" src="" alt="logo">-->
            <div class="my-header-logo">链活2.0后台管理系统</div>
        </a>
        <div class="my-header-btn">
            <button class="layui-btn layui-btn-small btn-nav"><i class="layui-icon">&#xe65f;</i></button>
        </div>

        <!-- 顶部左侧添加选项卡监听 -->
        <ul class="layui-nav" lay-filter="side-top-left">
            <li class="layui-nav-item"><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="layui-icon">&#xe621;</i>基础</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></dd>
                    <dd><a href="javascript:;" href-url="demo/form.html"><i class="layui-icon">&#xe621;</i>表单</a></dd>
                </dl>
            </li>
        </ul>

        <!-- 顶部右侧添加选项卡监听 -->
        <ul class="layui-nav my-header-user-nav" lay-filter="side-top-right">
            <li class="layui-nav-item"><a href="javascript:;" class="pay" href-url="">支持作者</a></li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><i class="layui-icon">&#xe629;</i>主题</a>
                <dl class="layui-nav-child">
                    <dd data-skin="0"><a href="javascript:;">默认</a></dd>
                    <dd data-skin="1"><a href="javascript:;">纯白</a></dd>
                    <dd data-skin="2"><a href="javascript:;">蓝白</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><img src="./frame/static/image/code.png" alt="logo"> Admin </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" href-url="demo/login.html"><i class="layui-icon">&#xe621;</i>登录页</a></dd>
                    <dd><a href="javascript:;" href-url="demo/map.html"><i class="layui-icon">&#xe621;</i>图表</a></dd>
                    <dd><a href="/"><i class="layui-icon">&#x1006;</i>退出</a></dd>
                </dl>
            </li>
        </ul>

    </div>
    <!-- side -->
    <div class="layui-side my-side">
        <div class="layui-side-scroll">
            <!-- 左侧主菜单添加选项卡监听 -->
            <ul class="layui-nav layui-nav-tree" lay-filter="side-main">
            	<li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>测试管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/station/index"></c:url>"><i class="layui-icon">&#xe621;</i>用户列表</a></dd>
                    </dl>
                </li>
               <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/users/user"></c:url>"><i class="layui-icon">&#xe621;</i>用户列表</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/users/asset"></c:url>"><i class="layui-icon">&#xe621;</i>资产列表</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/users/integral"></c:url>"><i class="layui-icon">&#xe621;</i>贡献值明细</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/users/invite"></c:url>"><i class="layui-icon">&#xe621;</i>邀请明细</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>矿机管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/ltc/tree"></c:url>"><i class="layui-icon">&#xe621;</i>用户矿机</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/ltc/quartz"></c:url>"><i class="layui-icon">&#xe621;</i>产果明细</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/ltc/pick"></c:url>"><i class="layui-icon">&#xe621;</i>采果明细</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/ltc/coupon"></c:url>"><i class="layui-icon">&#xe621;</i>果树券列表</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/ltc/trade"></c:url>"><i class="layui-icon">&#xe621;</i>果树券明细</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>资金管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/trade"></c:url>"><i class="layui-icon">&#xe621;</i>交易记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/recharge"></c:url>"><i class="layui-icon">&#xe621;</i>充值记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/withdraw"></c:url>"><i class="layui-icon">&#xe621;</i>提现记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/toTransferAccounts"></c:url>"><i class="layui-icon">&#xe621;</i>转果记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/fruit"></c:url>"><i class="layui-icon">&#xe621;</i>提果记录</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>充值码管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/code/exchange"></c:url>"><i class="layui-icon">&#xe621;</i>兑换码列表</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/code/detail"></c:url>"><i class="layui-icon">&#xe621;</i>兑换详情</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/product/toProductView"></c:url>"><i class="layui-icon">&#xe621;</i>商品记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/product/layer"></c:url>"><i class="layui-icon">&#xe621;</i>商品分类</a></dd>
                    </dl>
                </li>
                 <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/trade"></c:url>"><i class="layui-icon">&#xe621;</i>订单记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/recharge"></c:url>"><i class="layui-icon">&#xe621;</i>待发货记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/toTransferAccounts"></c:url>"><i class="layui-icon">&#xe621;</i>物流信息</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/withdraw"></c:url>"><i class="layui-icon">&#xe621;</i>退货记录</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/order/fruit"></c:url>"><i class="layui-icon">&#xe621;</i>提果记录</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>趣闻管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/info/information"></c:url>"><i class="layui-icon">&#xe621;</i>趣闻列表</a></dd>
                    	<dd><a href="javascript:;" href-url="<c:url value="/cms/info/comment"></c:url>"><i class="layui-icon">&#xe621;</i>评论列表</a></dd>
                    </dl>
                </li>
               	<li class="layui-nav-item  layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon">&#xe620;</i>基础</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/button"></c:url>"><i class="layui-icon">&#xe621;</i>按钮</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/form"></c:url>"><i class="layui-icon">&#xe621;</i>表单</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/table"></c:url>"><i class="layui-icon">&#xe621;</i>表格</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/tabcard"></c:url>"><i class="layui-icon">&#xe621;</i>选项卡</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/progressbar"></c:url>"><i class="layui-icon">&#xe621;</i>进度条</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/foldingpanel"></c:url>"><i class="layui-icon">&#xe621;</i>折叠面板</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/auxiliar"></c:url>"><i class="layui-icon">&#xe621;</i>辅助元素</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe628;</i>扩展</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/login"></c:url>"><i class="layui-icon">&#xe621;</i>登录页</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/register"></c:url>"><i class="layui-icon">&#xe621;</i>注册页</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/login2"></c:url>"><i class="layui-icon">&#xe621;</i>登录页2</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/map"></c:url>"><i class="layui-icon">&#xe621;</i>图表</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/addedit"></c:url>"><i class="layui-icon">&#xe621;</i>添加-修改</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/datatable"></c:url>"><i class="layui-icon">&#xe621;</i>data-table 表格页</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/tabletree"></c:url>"><i class="layui-icon">&#xe621;</i>Tree table树表格页</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/error404"></c:url>"><i class="layui-icon">&#xe621;</i>404页</a></dd>
                        <dd><a href="javascript:;" href-url="<c:url value="/cms/tips"></c:url>"><i class="layui-icon">&#xe621;</i>提示页</a></dd>
                    </dl>
                </li>
                <!-- li class="layui-nav-item"><a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=ad6ba602ae228be2222ddb804086e0cfa42da3d74e34b383b665c2bec1adfc6e"><i class="layui-icon">&#xe61e;</i>加入群下载源码</a></li>  -->
            </ul>

        </div>
    </div>
    <!-- body -->
    <div class="layui-body my-body">
        <div class="layui-tab layui-tab-card my-tab" lay-filter="card" lay-allowClose="true">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="1"><span><i class="layui-icon">&#xe638;</i>欢迎页</span></li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe id="iframe" src="<c:url value="/cms/welcome"></c:url>" frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- pay -->
<div class="my-pay-box none">
    <div><img src="./frame/static/image/zfb.png" alt="支付宝"><p>支付宝</p></div>
    <div><img src="./frame/static/image/wx.png" alt="微信"><p>微信</p></div>
</div>

<!-- 右键菜单 -->
<div class="my-dblclick-box none">
    <table class="layui-tab dblclick-tab">
        <tr class="card-refresh">
            <td><i class="layui-icon">&#x1002;</i>刷新当前标签</td>
        </tr>
        <tr class="card-close">
            <td><i class="layui-icon">&#x1006;</i>关闭当前标签</td>
        </tr>
        <tr class="card-close-all">
            <td><i class="layui-icon">&#x1006;</i>关闭所有标签</td>
        </tr>
    </table>
</div>

<script type="text/javascript" src="<c:url value="/assets/static/js/vip_comm.js"></c:url>"></script>
<script type="text/javascript">
	layui.config({
	    base: '<c:url value="/assets/static/js/"></c:url>'   // 模块目录
	}).extend({                         // 模块别名
	    vip_nav: 'vip_nav'
	    , vip_tab: 'vip_tab'
	    , vip_table: 'vip_table'
	});

	layui.use(['layer','vip_nav'], function () {

    // 操作对象
    var layer       = layui.layer
        ,vipNav     = layui.vip_nav
        ,$          = layui.jquery;

    // 顶部左侧菜单生成 [请求地址,过滤ID,是否展开,携带参数]
    vipNav.top_left('./json/nav_top_left.json','side-top-left',false);
    // 主体菜单生成 [请求地址,过滤ID,是否展开,携带参数]
    vipNav.main('./json/nav_main.json','side-main',true);

    // you code ...

});
</script>
</body>
</html>
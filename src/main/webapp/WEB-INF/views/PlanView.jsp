<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="common/LinkCommon.jsp" %>
    <title>链活后台管理系统</title>
</head>
<body>

<!-- layout admin -->
<div class="layui-layout layui-layout-admin"> <!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
    <!-- header -->
    <%@ include file="common/HeaderCommon.jsp" %>
    <!-- side -->

    <!-- body -->
    <div class="layui-body my-body">
        <div class="layui-tab my-tab" lay-filter="card" lay-allowClose="true">
            <div class="">
                <div class="layui-tab-item layui-show">
                    <!-- iframe id="iframe" src="<c:url value="/cms/welcome"></c:url>" frameborder="0"></iframe -->
                    <div class="layui-row layui-col-space10 my-index-main" style="padding:10px">
                    	<div class="layui-col-xs12 layui-col-sm12 layui-col-md12">
					        <div class="layui-collapse">
					            <div class="layui-colla-item">
					            	<form class="layui-form" style="margin:10px;">
										<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
										    <legend>方案信息</legend>
										</fieldset>
										<div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">预报站 </label>
									            <div class="layui-input-block">
									            	<div class="layui-col-xs12 layui-col-sm12 layui-col-md6">
										            	<select name="quiz1">
											                <option value="站名1">站名1</option>
											                <option value="站名2">站名2</option>
											                <option value="站名3">站名3</option>
											            </select>
											        </div>
											        <div class="layui-col-xs12 layui-col-sm12 layui-col-md6">
										            	<select name="quiz1">
											                <option value="站类1">站类1</option>
											                <option value="站类2">站类2</option>
											                <option value="站类3">站类3</option>
											            </select>
											        </div>
									            </div>
									        </div>
									    </div>
									    <div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">方案名称 </label>
									            <div class="layui-input-block">
									                <select name="quiz1">
										                <option value="站名1">站名1</option>
										                <option value="站名2">站名2</option>
										                <option value="站名3">站名3</option>
										            </select>
									            </div>
									        </div>
									    </div>
									    <div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">预报模型 </label>
									            <div class="layui-input-block">
									                <select name="quiz1">
										                <option value="站名1">站名1</option>
										                <option value="站名2">站名2</option>
										                <option value="站名3">站名3</option>
										            </select>
									            </div>
									        </div>
									    </div>
								
										<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
										    <legend>模型参数</legend>
										</fieldset>
										<div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">PE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.PE}" >
										            <div class="layui-form-mid layui-word-aux">PE = P - Ek</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">Ek = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.Ek}" >
										            <div class="layui-form-mid layui-word-aux">Ek = K * E</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">IM = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.IM}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">XE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.XE}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									   	</div>
									   	<div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">KE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.KE}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">DT = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.DT}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">DT = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.DT}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">DT = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.DT}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									    </div>
									    
									    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
										    <legend>演进参数</legend>
										</fieldset>
										<div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">KE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.PE}" >
										            <div class="layui-form-mid layui-word-aux">PE = P - Ek</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">XE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.Ek}" >
										            <div class="layui-form-mid layui-word-aux">Ek = K * E</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">DT = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.IM}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									    </div>
									    
									    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
										    <legend>雨量站</legend>
										</fieldset>
									    <div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">KE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.PE}" >
										            <div class="layui-form-mid layui-word-aux">PE = P - Ek</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">XE = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.Ek}" >
										            <div class="layui-form-mid layui-word-aux">Ek = K * E</div>
									            </div>
									        </div>
									        <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
									            <label class="layui-form-label">DT = </label>
									            <div class="layui-input-block">
									                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.IM}" >
										            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
									            </div>
									        </div>
									    </div>
									    
										<div class="layui-form-item">
											<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
												<label class="layui-form-label"></label>
									            <button class="layui-btn layui-btn-normal layui-btn-radius">保存入库</button>
									        </div>
									    </div>
									</form>
								</div>
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>
    </div>
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

	layui.use(['form','layer','vip_nav'], function () {

    // 操作对象
    var form 		= layui.form
    	,layer      = layui.layer
        ,vipNav     = layui.vip_nav
        ,$          = layui.jquery;

    // 顶部左侧菜单生成 [请求地址,过滤ID,是否展开,携带参数]
    vipNav.top_left('./json/nav_top_left.json','side-top-left',false);
    // 主体菜单生成 [请求地址,过滤ID,是否展开,携带参数]
    vipNav.main('./json/nav_main.json','side-main',true);


    
    
    
    
    
    
    
    

    $(document).ready(function(){
    	var contentHeight = $(window).height() - 60 - 22;
       	var viewHeight = contentHeight;
       	$(".layui-colla-item").css("height", viewHeight);
    	
    	$(".layui-collapse").fadeIn();
    });

});
</script>
</body>
</html>
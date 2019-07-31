<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="common/LinkCommon.jsp" %>
	<script type="text/javascript" src="<c:url value="/assets/echarts/echarts.min.js"></c:url>"></script>
    <script type="text/javascript" src="<c:url value="/assets/echarts/macarons.js"></c:url>"></script>
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
            <!-- ul class="layui-tab-title">
                <li class="layui-this" lay-id="1"><span><i class="layui-icon">&#xe638;</i>欢迎页</span></li>
            </ul -->
            <div class="">
                <div class="layui-tab-item layui-show">
                    <!-- iframe id="iframe" src="<c:url value="/cms/welcome"></c:url>" frameborder="0"></iframe -->
                    <div class="layui-row layui-col-space10 my-index-main" style="padding:10px">
						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
						    <legend>方案基本信息</legend>
						</fieldset>
						<div class="layui-form-item">
							<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
					            <label class="layui-form-label">预报站 </label>
					            <div class="layui-input-block">
					            	<input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WU0}" >
					            </div>
					        </div>
					    </div>
					    <div class="layui-form-item">
							<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
					            <label class="layui-form-label">方案名称 </label>
					            <div class="layui-input-block">
					                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WL0}" >
					            </div>
					        </div>
					    </div>
					    <div class="layui-form-item">
							<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
					            <label class="layui-form-label">预报模型 </label>
					            <div class="layui-input-block">
					                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.QRG}" >
					            </div>
					        </div>
					    </div>
				
						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
						    <legend>模型参数设置</legend>
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
						<div class="layui-form-item">
							<div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
								<label class="layui-form-label"></label>
					            <button class="layui-btn layui-btn-normal layui-btn-radius">保存入库</button>
					        </div>
					    </div>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
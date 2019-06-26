<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="common/HeaderCommon.jsp" %>
    <script type="text/javascript" src="<c:url value="/assets/echarts/echarts.min.js"></c:url>"></script>
    <script type="text/javascript" src="<c:url value="/assets/echarts/macarons.js"></c:url>"></script>
</head>
<body class="body">
	<div class="layui-row layui-col-space10 my-index-main">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step One</legend>
		</fieldset>
		<div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WU0 = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WU0}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WL0 = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WL0}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WD0 = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WD0}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	    </div>
		<div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">QRSS = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.QRSS}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">QRG = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.QRG}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	        
	        </div>
	    </div>
	    <div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WUM = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WUM}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WLM = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WLM}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">WDM = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.WDM}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	    </div>
	    <div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">B = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.B}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">K = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.K}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">C = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.C}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	    </div>
		<div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">SM = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.SM}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">EX = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.EX}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">KSS = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.KSS}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	    </div>
		<div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">KG = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.KG}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">IM = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.IM}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">XE = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.XE}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	    </div>
	    <div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">KE = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.KE}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">DT = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${para.DT}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	        
	        </div>
	    </div>

		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step Common</legend>
		</fieldset>
		<div class="layui-form-item">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">PE = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.PE}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">PE = P - Ek</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	            <label class="layui-form-label">Ek = </label>
	            <div class="layui-input-inline">
	                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input" value="${stepCommon.Ek}" readonly>
	            </div>
	            <div class="layui-form-mid layui-word-aux">Ek = K * E</div>
	        </div>
	        <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
	        
	        </div>
	    </div>
	    
	    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step One</legend>
		</fieldset>
		<p>
			<span>W0 = </span>
			<input type="text" value="${stepOne.W0}" readonly="readonly"/>
		</p>
		<p>
			<span>Wm = </span>
			<input type="text" value="${stepOne.Wm}" readonly="readonly"/>
		</p>
		<p>
			<span>Wmm = </span>
			<input type="text" value="${stepOne.Wmm}" readonly="readonly"/>
		</p>
		<p>
			<span>A = </span>
			<input type="text" value="${stepOne.A}" readonly="readonly"/>
		</p>
		<p>
			<span>Rd = </span>
			<input type="text" value="${stepOne.Rd}" readonly="readonly"/>
		</p>
		<p>
			<span>R = </span>
			<input type="text" value="${stepOne.R}" readonly="readonly"/>
		</p>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step Two</legend>
		</fieldset>
		<p>
			<span>PEx = </span>
			<input type="text" value="${stepTwo.PEx}" readonly="readonly"/>
		</p>
		<p>
			<span>WUx1 = </span>
			<input type="text" value="${stepTwo.WUx1}" readonly="readonly"/>
		</p>
		<p>
			<span>PEy = </span>
			<input type="text" value="${stepTwo.PEy}" readonly="readonly"/>
		</p>
		<p>
			<span>WLx1 = </span>
			<input type="text" value="${stepTwo.WLx1}" readonly="readonly"/>
		</p>
		<p>
			<span>PEz = </span>
			<input type="text" value="${stepTwo.PEz}" readonly="readonly"/>
		</p>
		<p>
			<span>WDx1 = </span>
			<input type="text" value="${stepTwo.WDx1}" readonly="readonly"/>
		</p>
		<p>
			<span>EKx = </span>
			<input type="text" value="${stepTwo.EKx}" readonly="readonly"/>
		</p>
		<p>
			<span>WUx2 = </span>
			<input type="text" value="${stepTwo.WUx2}" readonly="readonly"/>
		</p>
		<p>
			<span>EKy = </span>
			<input type="text" value="${stepTwo.EKy}" readonly="readonly"/>
		</p>
		<p>
			<span>WLx2 = </span>
			<input type="text" value="${stepTwo.WLx2}" readonly="readonly"/>
		</p>
		<p>
			<span>EKz = </span>
			<input type="text" value="${stepTwo.EKz}" readonly="readonly"/>
		</p>
		<p>
			<span>WDx2 = </span>
			<input type="text" value="${stepTwo.WDx2}" readonly="readonly"/>
		</p>
		<p>
			<span>WU = </span>
			<input type="text" value="${stepTwo.WU}" readonly="readonly"/>
		</p>
		<p>
			<span>WL = </span>
			<input type="text" value="${stepTwo.WL}" readonly="readonly"/>
		</p>
		<p>
			<span>WD = </span>
			<input type="text" value="${stepTwo.WD}" readonly="readonly"/>
		</p>
		
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step Three</legend>
		</fieldset>
		<p>
			<span>FR = </span>
			<input type="text" value="${stepThree.FR}" readonly="readonly"/>
		</p>
		<p>
			<span>SMMF = </span>
			<input type="text" value="${stepThree.SMMF}" readonly="readonly"/>
		</p>
		<p>
			<span>AU = </span>
			<input type="text" value="${stepThree.AU}" readonly="readonly"/>
		</p>
		<p>
			<span>Rs = </span>
			<input type="text" value="${stepThree.Rs}" readonly="readonly"/>
		</p>
		<p>
			<span>Rss = </span>
			<input type="text" value="${stepThree.Rss}" readonly="readonly"/>
		</p>
		<p>
			<span>Rg = </span>
			<input type="text" value="${stepThree.Rg}" readonly="readonly"/>
		</p>
		<p>
			<span>S = </span>
			<input type="text" value="${stepThree.S}" readonly="readonly"/>
		</p>
		<p>
			<span>Sup = </span>
			<input type="text" value="${stepThree.Sup}" readonly="readonly"/>
		</p>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step Four</legend>
		</fieldset>
		<p>
			<span>F = </span>
			<input type="text" value="${stepFour.F}" readonly="readonly"/>
		</p>
		<p>
			<span>Qs = </span>
			<input type="text" value="${stepFour.Qs}" readonly="readonly"/>
		</p>
		<p>
			<span>Qss = </span>
			<input type="text" value="${stepFour.Qss}" readonly="readonly"/>
		</p>
		<p>
			<span>Qg = </span>
			<input type="text" value="${stepFour.Qg}" readonly="readonly"/>
		</p>
		<p>
			<span>Qe = </span>
			<input type="text" value="${stepFour.Qe}" readonly="readonly"/>
		</p>
		<p>
			<span>Qeup = </span>
			<input type="text" value="${stepFour.Qeup}" readonly="readonly"/>
		</p>
		<p>
			<span>Qssup = </span>
			<input type="text" value="${stepFour.Qssup}" readonly="readonly"/>
		</p>
		<p>
			<span>Qgup = </span>
			<input type="text" value="${stepFour.Qgup}" readonly="readonly"/>
		</p>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		    <legend>Step Five</legend>
		</fieldset>
		<p>
			<span>C0 = </span>
			<input type="text" value="${stepFive.C0}" readonly="readonly"/>
		</p>
		<p>
			<span>C1 = </span>
			<input type="text" value="${stepFive.C1}" readonly="readonly"/>
		</p>
		<p>
			<span>C2 = </span>
			<input type="text" value="${stepFive.C2}" readonly="readonly"/>
		</p>
		<p>
			<span>Qt = </span>
			<input type="text" value="${stepFive.Qt}" readonly="readonly"/>
		</p>
	</div>
</body>
</html>
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
	<%@ include file="common/SideCommon.jsp" %>
    <!-- body -->
    <div class="layui-body my-body my-body-left">
        <div class="layui-tab my-tab" lay-filter="card" lay-allowClose="true">
            <!-- ul class="layui-tab-title">
                <li class="layui-this" lay-id="1"><span><i class="layui-icon">&#xe638;</i>欢迎页</span></li>
            </ul -->
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <!-- iframe id="iframe" src="<c:url value="/cms/welcome"></c:url>" frameborder="0"></iframe -->
                    <div class="layui-row layui-col-space10 my-index-main" style="padding:10px;">
                    		
                    	<div class="layui-col-xs12 layui-col-sm12 layui-col-md12">
					        <div class="layui-collapse">
					            <div class="layui-colla-item">
					            	<div class="layui-form-item" style="text-align:center;font-size:20px;margin-top:10px;">
						               	历史预报成果
					            	</div>
					            	<div class="layui-form-item" style="margin-bottom:10px;">
					            		<form class="layui-form">
							               	<div class="layui-inline">
										      	<label class="layui-form-label" style="width:60px">开始时间</label>
												<div class="layui-input-inline" style="margin-right:0">
												  	<input type="text" name="startTime" id="startTime" lay-verify="date" autocomplete="off" class="layui-input">
												</div>
										    </div>
										    <div class="layui-inline">
										      	<label class="layui-form-label" style="width:60px">结束时间</label>
												<div class="layui-input-inline" style="margin-right:20px">
												  	<input type="text" name="endTime" id="endTime" lay-verify="date" autocomplete="off" class="layui-input">
												</div>
										    </div>
										    <div class="layui-inline">
								                <button class="layui-btn layui-btn-normal layui-btn-radius">查询</button>
								            </div>
								    	</form>
						            </div>
					            	
					            	<div style="margin:10px;">
					            		<table class="layui-hide" id="table"></table>
					            	</div>
					            </div>
					        </div>
					    </div>
					    
					</div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-normal layui-btn-sm" lay-event="edit">查看</a>
  <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
</script>

<!-- script type="text/javascript" src="<c:url value="/assets/static/js/vip_comm.js"></c:url>"></script-->
<script type="text/javascript">
	layui.config({
	    base: '<c:url value="/assets/static/js/"></c:url>'   // 模块目录
	}).extend({                         // 模块别名
	    vip_nav: 'vip_nav'
	    , vip_tab: 'vip_tab'
	    , vip_table: 'vip_table'
	});

	layui.use(['layer','vip_nav', 'table', 'laydate'], function () {

    // 操作对象
    var layer       = layui.layer
        ,vipNav     = layui.vip_nav
        ,table		= layui.table
        ,$          = layui.jquery
        , laydate 	= layui.laydate;
    
  	//日期
    laydate.render({
        elem: '#startTime',
        type: 'datetime'
    });
  	//日期
    laydate.render({
        elem: '#endTime',
        type: 'datetime'
    });

    table.render({
        elem: '#table'
        ,url:'<c:url value="/cms/result/data"></c:url>'
        ,height: 'full-198'
        ,cols: [[
          {field:'id', width:80, title: '序号', sort: true}
          ,{field:'name', width:280, title: '站名'}
          ,{field:'peakTime', width:280, title: '洪峰时间'}
          ,{field:'peakFlow', width:280, title: '洪峰流量'}
          ,{field:'username', width:280, title: '预报员'}
          ,{field:'time', title: '预报时间'}
          ,{fixed:'right', title:'操作', width:150, toolbar: '#barDemo'}
        ]]
        ,page: true
   });

    table.on('tool(table)', function(obj){
        var data = obj.data;
        //console.log(obj)
        if(obj.event === 'del'){
          layer.confirm('真的删除行么', function(index){
            obj.del();
            layer.close(index);
          });
        } else if(obj.event === 'edit'){
          layer.prompt({
            formType: 2
            ,value: data.email
          }, function(value, index){
            obj.update({
              email: value
            });
            layer.close(index);
          });
        }
      });

    
    
    
    
    
    
    
    

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
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
            <div class="layui-tab-content calc-content">
                <div class="layui-tab-item layui-show">
                    <!-- iframe id="iframe" src="<c:url value="/cms/welcome"></c:url>" frameborder="0"></iframe -->
                    <div class="layui-row layui-col-space10 my-index-main calc-view" style="padding:10px;">
	                    <div class="layui-col-xs12 layui-col-sm6 layui-col-md3">
					        <div class="layui-collapse">
					            <div class="layui-colla-item" style="height:847px;">
					            <form class="layui-form" action="">
					            	<fieldset class="layui-elem-field layui-field-title">
									    <legend>基本设置</legend>
									</fieldset>
						            <div class="layui-form-item">
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							            	<select name="quiz1">
								                <option value="">请选择站类别</option>
								                <option value="浙江">浙江省</option>
								                <option value="你的工号">江西省</option>
								                <option value="你最喜欢的老师">福建省</option>
								            </select>
								        </div>
								        <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							            	<select name="quiz1">
								                <option value="">请选择水文站</option>
								                <option value="浙江">浙江省</option>
								                <option value="你的工号">江西省</option>
								                <option value="你最喜欢的老师">福建省</option>
								            </select>
								        </div>
								    </div>
								    <div class="layui-form-item">
							            <div class="layui-col-xs12 layui-col-sm12 layui-col-md12">
							            	<select name="quiz1">
								                <option value="">请选择预报方案</option>
								                <option value="浙江">浙江省</option>
								                <option value="你的工号">江西省</option>
								                <option value="你最喜欢的老师">福建省</option>
								            </select>
								        </div>
								    </div>
								    <div class="layui-form-item">
						               	<div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							                <input type="text" name="startTime" id="startTime" lay-verify="date" placeholder="请选择洪水预报时间" autocomplete="off" class="layui-input">
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							            	<input type="text" name="endTime" id="endTime" lay-verify="date" placeholder="请选择前期影响时间" autocomplete="off" class="layui-input">
							            </div>
								    </div>
								    <div class="layui-form-item">
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							            	<select name="quiz1">
								                <option value="">请选择预报天数</option>
								                <option value="3">3天</option>
								                <option value="5">5天</option>
								            </select>
								        </div>
								        <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
							            	<select name="quiz1">
								                <option value="">请选择实测雨量</option>
								                <option value="欧洲台">欧洲台</option>
								                <option value="日本台">日本台</option>
								            </select>
								        </div>
								    </div>
								    <fieldset class="layui-elem-field layui-field-title">
									    <legend>参数调整</legend>
									</fieldset>
									<div class="layui-form-item">
						               	<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="startTime" placeholder="SM" class="layui-input">
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="endTime" placeholder="CI" class="layui-input">
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="endTime" placeholder="CS" class="layui-input">
							            </div>
								    </div>
								    <div class="layui-form-item">
						               	<div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="startTime" placeholder="LAG" class="layui-input">
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="endTime" placeholder="XX" class="layui-input">
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
							                <input type="text" name="endTime" placeholder="XX" class="layui-input">
							            </div>
								    </div>
									<!-- div class="layui-form-item">
								        <table class="layui-table" lay-skin="line">
										    <colgroup>
										    	<col width="10">
										        <col width="100">
										        <col width="100">
										        <col>
										    </colgroup>
										    <thead>
										    <tr>
										    	<th></th>
										        <th>方案名</th>
										        <th>构建人</th>
										        <th>构建时间</th>
										    </tr>
										    </thead>
										    <tbody>
										    <tr>
										    	<td><input type="radio" name="sex" value="男" checked=""></td>
										        <td>贤心</td>
										        <td>汉族</td>
										        <td>1989-10-14</td>
										    </tr>
										    <tr>
										    	<td><input type="radio" name="sex" value="男" checked=""></td>
										        <td>张爱玲</td>
										        <td>汉族</td>
										        <td>1920-09-30</td>
										    </tr>
										    <tr>
										    	<td><input type="radio" name="sex" value="男" checked=""></td>
										        <td>Helen Keller</td>
										        <td>拉丁美裔</td>
										        <td>1880-06-27</td>
										    </tr>
										    <tr>
										    	<td><input type="radio" name="sex" value="男" checked=""></td>
										        <td>岳飞</td>
										        <td>汉族</td>
										        <td>1103-北宋崇宁二年</td>
										    </tr>
										    <tr>
										    	<td><input type="radio" name="sex" value="男" checked=""></td>
										        <td>孟子</td>
										        <td>华夏族（汉族）</td>
										        <td>公元前-372年</td>
										    </tr>
										    </tbody>
										</table>
								    </div-->
								    <fieldset class="layui-elem-field layui-field-title">
									    <legend>操作</legend>
									</fieldset>
									<div class="layui-form-item">
						               	<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 xaj-col-button">
							                <button class="layui-btn layui-btn-danger layui-btn-radius">重置参数</button>
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4 xaj-col-button">
							                <button class="layui-btn layui-btn-normal layui-btn-radius">开始预报</button>
							            </div>
							            <div class="layui-col-xs12 layui-col-sm6 layui-col-md4 xaj-col-button">
							                <button class="layui-btn layui-btn-warm layui-btn-radius">保存入库</button>
							            </div>
								    </div>
									<!--div class="layui-form-item">
								        <label class="layui-form-label">单选框</label>
								        <div class="layui-input-block">
								            <input type="radio" name="sex" value="男" title="男男男男男男男" checked="">
								            <input type="radio" name="sex" value="女" title="女女女女女女女">
								        </div>
								    </div>
								    <div class="layui-form-item">
								        <label class="layui-form-label">请选择省</label>
								        <div class="layui-input-inline">
								            <select name="quiz1">
								                <option value="">请选择省</option>
								                <option value="浙江" selected="">浙江省</option>
								                <option value="你的工号">江西省</option>
								                <option value="你最喜欢的老师">福建省</option>
								            </select>
								        </div>
								    </div>
								    <div class="layui-form-item">
								    	<label class="layui-form-label">请选择市</label>
								        <div class="layui-input-inline">
								            <select name="quiz2">
								                <option value="">请选择市</option>
								                <option value="杭州">杭州</option>
								                <option value="宁波" disabled="">宁波</option>
								                <option value="温州">温州</option>
								                <option value="温州">台州</option>
								                <option value="温州">绍兴</option>
								            </select>
								        </div>
								   	</div>
								   	<div class="layui-form-item">
								   		<label class="layui-form-label">请选择县/区</label>
								        <div class="layui-input-inline">
								            <select name="quiz3">
								                <option value="">请选择县/区</option>
								                <option value="西湖区">西湖区</option>
								                <option value="余杭区">余杭区</option>
								                <option value="拱墅区">临安市</option>
								            </select>
								        </div>
								    </div-->
								</form>
					            </div>
					        </div>
				    	</div>
				    
					    <div class="layui-col-xs12 layui-col-sm6 layui-col-md9">
					        <div class="layui-collapse">
					            <div class="layui-colla-item" style="height:747px;padding-top:20px;">
					                <div id="main3" style="width: 100%;height:100%;"></div>
									<script type="text/javascript">
								        // 基于准备好的dom，初始化echarts实例
								        var myChart3 = echarts.init(document.getElementById('main3'), 'macarons');
								
								        option = {
							        	    title : {
							        	        text: '洪水过程',
							        	        subtext: '宁都站',
							        	        x: 'center',
							        	        align: 'right'
							        	    },
							        	    grid: {
							        	        bottom: 80
							        	    },
							        	    toolbox: {
							        	        feature: {
							        	            dataZoom: {
							        	                yAxisIndex: 'none'
							        	            },
							        	            restore: {},
							        	            saveAsImage: {}
							        	        }
							        	    },
							        	    tooltip : {
							        	        trigger: 'axis',
							        	        axisPointer: {
							        	            type: 'cross',
							        	            animation: false,
							        	            label: {
							        	                backgroundColor: '#505765'
							        	            }
							        	        }
							        	    },
							        	    legend: {
							        	        data:['预报水位','降雨量'],
							        	        x: 'left'
							        	    },
							        	    dataZoom: [
							        	        {
							        	            show: false,
							        	            realtime: true,
							        	          //  start: 65,
							        	           // end: 85
							        	        },
							        	        {
							        	            type: 'inside',
							        	            realtime: true,
							        	           start: 65,
							        	          end: 85
							        	        }
							        	    ],
							        	    xAxis : [
							        	        {
							        	            type : 'category',
							        	            boundaryGap : true,
							        	            axisLine: {onZero: false},
							        	            data : [
							        	                '2009/6/12 2:00', '2009/6/12 3:00', '2009/6/12 4:00', '2009/6/12 5:00', '2009/6/12 6:00', '2009/6/12 7:00', '2009/6/12 8:00', '2009/6/12 9:00', '2009/6/12 10:00', '2009/6/12 11:00', '2009/6/12 12:00', '2009/6/12 13:00', '2009/6/12 14:00', '2009/6/12 15:00', '2009/6/12 16:00', '2009/6/12 17:00', '2009/6/12 18:00', '2009/6/12 19:00', '2009/6/12 20:00', '2009/6/12 21:00', '2009/6/12 22:00', '2009/6/12 23:00'
							        	               
							        	            ].map(function (str) {
							        	                return str.replace(' ', '\n')
							        	            })
							        	        }
							        	    ],
							        	    yAxis: [
							        	        {
							        	            name: '预报水位(m)',
							        	            type: 'value',
							        	            max: 500
							        	        },
							        	        {
							        	            name: '降雨量(mm)',
							        	            nameLocation: 'start',
							        	            max: 5,
							        	            type: 'value',
							        	            inverse: true
							        	        }
							        	    ],
							        	    series: [
							        	        {
							        	            name:'预报水位',
							        	            type:'line',
							        	            animation: false,
							        	           
							        	             smooth: true,
							        	       lineStyle: {
							        	                normal: {
							        	                    width: 3,
							        	                    shadowColor: 'rgba(0,0,0,0.4)',
							        	                    shadowBlur: 10,
							        	                    shadowOffsetY: 10
							        	                }
							        	            },
							        	           
							        	            data:[
							        	                0.41,0.41,2.41,4.42,0.42,0.42,0.42,5.42,10.42,10.42,10.42,22.42,30.43,50.43,100.43,100.43,100.43,90.43,30.44,0.44,0.44,0.44
							        	            ]
							        	        },
							        	        {
							        	            name:'降雨量',
							        	            type:'bar',
							        	               barWidth: '40%',
							        	            yAxisIndex:1,
							        	            animation: false,
							        	           
							        	           
							        	           
							        	            data: [
							        	                0.571,0.814,1.153,0.774,0.202,0.086,0.075,0.071,0.032,0.019,0.003,0.004,0.004,0.004,0.004,0.004,0.004,0.007,0.072,0.153,0.256,0.306
							        	            ]
							        	        }
							        	    ]
							        	};
								
								        // 使用刚指定的配置项和数据显示图表。
								        myChart3.setOption(option);
								    </script>
				            </div>
				        </div>
				    </div>
                	</div>
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

<script type="text/javascript">
	layui.config({
	    base: '<c:url value="/assets/static/js/"></c:url>'   // 模块目录
	}).extend({                         // 模块别名
	    vip_nav: 'vip_nav'
	    , vip_tab: 'vip_tab'
	    , vip_table: 'vip_table'
	});
	
    layui.use(['element', 'form', 'table', 'layer', 'vip_tab', 'laydate'], function () {
        var form = layui.form
                , table = layui.table
                , layer = layui.layer
                , vipTab = layui.vip_tab
                , element = layui.element
                , $ = layui.jquery
                , laydate = layui.laydate;
        
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

        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main-line'));

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption({
            title: {
                text: '示例'
            },
            tooltip: {},
            legend: {
                data: ['销量']
            },
            xAxis: {
                data: ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"]
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }]
        });

        // 打开选项卡
        $('.my-nav-btn').on('click', function(){
            if($(this).attr('data-href')){
                //vipTab.add('','标题','路径');
                vipTab.add($(this),'<i class="layui-icon">'+$(this).find("button").html()+'</i>'+$(this).find('p:last-child').html(),$(this).attr('data-href'));
            }
        });

        // you code ...


    });
</script>
</body>
</html>
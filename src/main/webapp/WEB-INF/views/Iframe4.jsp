<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
body{
	margin:8px 35px 45px 35px;
}
</style>
<div id="main" style="height:100%;height:100%"></div>
<script type="text/javascript" src="<c:url value="/assets/echarts/echarts.min.js"></c:url>"></script>
<script type="text/javascript" src="<c:url value="/assets/echarts/macarons.js"></c:url>"></script>
<script>
	var myChart = echarts.init(document.getElementById('main'), 'macarons');
	option = {
	    title: {
	        text: '降雨趋势',
	        subtext: '宁都站',
	        x: 'center',
	        align: 'right'
	    },
	    tooltip : {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            label: {
	                backgroundColor: '#6a7985'
	            }
	        }
	    },
	    /*legend: {
	        data:['降雨量']
	    },*/
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            boundaryGap : false,
	            data : ['周一','周二','周三','周四','周五','周六','周日']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	       
	        {
	            name:'降雨量',
	            type:'line',
	              smooth: true,
	       lineStyle: {
	                normal: {
	                    width: 3,
	                    shadowColor: 'rgba(0,0,0,0.4)',
	                    shadowBlur: 10,
	                    shadowOffsetY: 10
	                }
	            },
	            label: {
	                normal: {
	                    show: true,
	                    position: 'top'
	                }
	            },
	          
	            data:[820, 932, 901, 934, 1290, 1330, 1320]
	        }
	    ]
	};
	myChart.setOption(option);
</script>
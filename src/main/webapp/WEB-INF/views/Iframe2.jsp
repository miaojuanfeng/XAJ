<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="main" style="width:100%;height:100%;"></div>
<script type="text/javascript" src="<c:url value="/assets/echarts/echarts.min.js"></c:url>"></script>
<script type="text/javascript" src="<c:url value="/assets/echarts/macarons.js"></c:url>"></script>
<script>
   	var myChart = echarts.init(document.getElementById('main'), 'macarons');
   	option = {
  	    title : {
  	        text: '蒸发量和降水量',
  	        subtext: '宁都站',
  	        x: 'center',
  	        align: 'right'
  	    },
  	    tooltip : {
  	        trigger: 'axis'
  	    },
  	    /*legend: {
  	        data:['蒸发量','降水量'],
  	        x: 'left'
  	    },*/
  	    toolbox: {
  	        show : true,
  	        feature : {
  	            dataView : {show: true, readOnly: false},
  	            magicType : {show: true, type: ['line', 'bar']},
  	            restore : {show: true},
  	            saveAsImage : {show: true}
  	        }
  	    },
  	    calculable : true,
  	    xAxis : [
  	        {
  	            type : 'category',
  	            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
  	        }
  	    ],
  	    yAxis : [
  	        {
  	            type : 'value'
  	        }
  	    ],
  	    series : [
  	        {
  	            name:'蒸发量',
  	            type:'bar',
  	            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
  	            markPoint : {
  	                data : [
  	                    {type : 'max', name: '最大值'},
  	                    {type : 'min', name: '最小值'}
  	                ]
  	            },
  	            markLine : {
  	                data : [
  	                    {type : 'average', name: '平均值'}
  	                ]
  	            }
  	        },
  	        {
  	            name:'降水量',
  	            type:'bar',
  	            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
  	            markPoint : {
  	                data : [
  	                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
  	                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
  	                ]
  	            },
  	            markLine : {
  	                data : [
  	                    {type : 'average', name : '平均值'}
  	                ]
  	            }
  	        }
  	    ]
  	};
  	myChart.setOption(option);
</script>
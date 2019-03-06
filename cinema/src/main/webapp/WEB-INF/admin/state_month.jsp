<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>柱状图</title>
    <script type="application/javascript" src="js/echarts.common.min.js"></script>
    <script type="application/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));
    // 显示标题，图例和空的坐标轴
    myChart.setOption({
        title: {
            text: '月销售额统计'
        },
        tooltip: {},
        legend: {
            data:['销售额']
        },
        xAxis: {
            data: []
        },
        yAxis: {},
        series: [{
            name: '销售额',
            type: 'bar',
            data: []
        }]
    });

    // 异步加载数据
    $.get('state_month_data').done(function (data) {
        // 填入数据
        myChart.setOption({
            xAxis: {
                data: data.categories
            },
            series: [{
                // 根据名字对应到相应的系列
                name: '销售额',
                data: data.data
            }]
        });
    });
</script>
</body>
</html>
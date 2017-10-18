<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<link href="css/icons.css" rel="stylesheet" />         
<link href="css/bootstrap.css" rel="stylesheet" />	   
<link href="css/plugins.css" rel="stylesheet" />		

<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap/bootstrap.js"></script>		

<script src="plugins/core/moment/moment.min.js"></script>		
<script src="plugins/forms/daterangepicker/daterangepicker.js"></script>		
<script src="plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="plugins/forms/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
</head>

<body>
	<div class="col-lg-3 col-md-3"><!-- 这个控制input的宽高   -->
		<div class="input-group"><!--这个控制后面图片与input在一起的  -->
			<input id="adddate" class="form-control" placeholder="申请日期范围" /> 
<span class="input-group-addon"><i class="fa-calendar"></i></span>
		</div>
			<input onclick="a()" type="button" value="提交"/>   <!--  自己用来测试input中的内容   -->
		</div>
</body>


<script>
	$(document).ready(
			function() {
				$('#adddate').daterangepicker({
						// startDate: moment().startOf('day'),  
						//endDate: moment(),  
						minDate: '2012-01-01',    //最小时间  =====>>格式要跟格式化的样式一致
						endDate : moment(), //最大时间   
						//dateLimit : {days : 30}, //起止时间的最大间隔  
						showDropdowns : true,
						showWeekNumbers : false, //是否显示第几周  
						timePicker : false, //是否显示小时和分钟  
						timePickerIncrement : 60, //时间的增量，单位为分钟  
						timePicker12Hour : false, //是否使用12小时制来显示时间  
						ranges : {
							//'最近1小时': [moment().subtract('hours',1), moment()],  
							'今日' : [ moment().startOf('day'), moment() ],
							'昨日' : [
							moment().subtract('days', 1).startOf('day'),
							moment().subtract('days', 1).endOf('day') ],
								'最近7日' : [ moment().subtract('days', 6),
										moment() ],
								'最近30日' : [ moment().subtract('days', 29),
										moment() ]
							},
							opens : 'right', //日期选择框的弹出位置  
							buttonClasses : [ 'btn btn-default' ],
							applyClass : 'btn-small btn-primary blue',
							cancelClass : 'btn-small',
							format : 'YYYY-MM-DD', //控件中from和to 显示的日期格式  
							separator : ' 到 ',
							locale : {
								applyLabel : '确定',
								cancelLabel : '取消',
								fromLabel : '起始时间',
								toLabel : '结束时间',
								customRangeLabel : '自定义',
								daysOfWeek : [ '日', '一', '二', '三', '四', '五','六' ],
								monthNames : [ '一月', '二月', '三月', '四月', '五月',
										'六月', '七月', '八月', '九月', '十月', '十一月',
										'十二月' ],
								firstDay : 1
							}
						},
						function(start, end, label) {//格式化日期显示框  
							$('#adddate span').html(
									start.format('MM-DD-YYYY') + ' - '
											+ end.format('YYYY-MM-DD'));
						});
		/* 		$("#startdate").datetimepicker({
					language : 'zh-CN',
					format : "yyyy-mm-dd",
					autoclose : true,
					todayBtn : true,
					pickerPosition : "bottom-left",
					minView : 2			//最精准的时间选择为日期0-分 1-时 2-日 3-月 
				});

				$("#enddate").datetimepicker({
					language : 'zh-CN',
					format : "yyyy-mm-dd",
					autoclose : true,
					todayBtn : true,
					pickerPosition : "bottom-left",
					minView : 2
				});  */
			});
</script>
</html>
<?php
/**
 * 自助下单系统
**/
include("../includes/common.php");
$title='自助下单系统管理中心';
include './head.php';
if($islogin==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");
?>
<?php
$mysqlversion=$DB->getColumn("select VERSION()");
$sec_msg = sec_check();
$checkupdate = getCheckString();
?>
<style>
@media (max-width:767px){
.showcountl{padding-right: 5px;}
.showcountr{padding-left: 5px;}
}
</style>
<div class="col-xs-6 col-lg-4 showcountl">
	<a href="javascript:void(0)" class="widget">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background">
			<i class="fa fa-list-ol text-light-op"></i>
		</div>
		<h2 class="widget-heading h3">
		<strong><span id="count1"></span></strong>
		</h2>
		<span class="text-muted">订单总数</span>
	</div>
	</a>
</div>
<div class="col-xs-6 col-lg-4 showcountr">
	<a href="javascript:void(0)" class="widget">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background-success">
			<i class="fa fa-first-order text-light-op"></i>
		</div>
		<h2 class="widget-heading h3 text-success">
		<strong><span id="count3"></span></strong>
		</h2>
		<span class="text-muted">待处理订单</span>
	</div>
	</a>
</div>
<div class="col-xs-6 col-lg-4 showcountl">
	<a href="javascript:void(0)" class="widget">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background-warning">
			<i class="fa fa-briefcase text-light-op"></i>
		</div>
		<h2 class="widget-heading h3 text-warning">
		<strong>+ <span id="count4"></span></strong>
		</h2>
		<span class="text-muted">今日订单数</span>
	</div>
	</a>
</div>
<div class="col-xs-6 col-lg-4 showcountr">
	<a href="javascript:void(0)" class="widget" title="只统计通过支付接口产生的支付订单总额，不包括余额下单的">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background-danger">
			<i class="fa fa-rmb text-light-op"></i>
		</div>
		<h2 class="widget-heading h3 text-danger">
		<strong>$ <span id="count5"></span></strong>
		</h2>
		<span class="text-muted">今日交易额</span>
	</div>
	</a>
</div>
<div class="col-xs-6 col-lg-4 showcountl">
	<a href="javascript:void(0)" class="widget" title="只统计已完成和正在处理的订单">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background-warning" style="background-color:#e9d706 !important;">
			<i class="fa fa-briefcase text-light-op"></i>
		</div>
		<h2 class="widget-heading h3 text-warning" style="color:#e9d706">
		<strong>$ <span id="count15"></span></strong>
		</h2>
		<span class="text-muted">今日收益</span>
	</div>
	</a>
</div>
<div class="col-xs-6 col-lg-4 showcountr">
	<a href="javascript:void(0)" class="widget" title="只统计已完成和正在处理的订单">
	<div class="widget-content widget-content-mini text-right clearfix">
		<div class="widget-icon pull-left themed-background-danger" style="background-color:#f59797 !important;">
			<i class="fa fa-rmb text-light-op"></i>
		</div>
		<h2 class="widget-heading h3 text-danger" style="color:#f59797">
		<strong>$ <span id="count16"></span></strong>
		</h2>
		<span class="text-muted">昨日收益</span>
	</div>
	</a>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-lg-8">
	<div class="widget">
		<div class="widget-content border-bottom">
一周交易与订单统计
		</div>
		<div class="widget-content border-bottom themed-background-muted">
			<div id="chart-classic-dash" style="height: 393px;">
			</div>
		</div>
		<div class="widget-content widget-content-full">
			<div class="row text-center">
				<div class="col-xs-4 push-inner-top-bottom border-right">
					<h4 class="widget-heading"><i class="fa fa-qq text-dark push-bit"></i>&nbsp;QQ钱包交易额<br>
					<center><span id="count12"></span>元</center></h4>
				</div>
				<div class="col-xs-4 push-inner-top-bottom">
					<h4 class="widget-heading"><i class="fa fa-wechat text-dark push-bit"></i>&nbsp;微信交易额<br>
					<center><span id="count13"></span>元</center></h4>
				</div>
				<div class="col-xs-4 push-inner-top-bottom border-left">
					<h4 class="widget-heading"><i class="fa fa-credit-card text-dark push-bit"></i>&nbsp;支付宝交易额<br>
					<center><span id="count14"></span>元</center></h4>
				</div>
			</div>
		</div>
	</div>
<div class="widget">
<div class="widget-content border-bottom">
<span class="pull-right text-muted"><i class="fa fa-shield"></i></span>
安全中心
</div>
	<ul class="list-group">
<?php
foreach($sec_msg as $row){
	echo $row;
}
if(count($sec_msg)==0)echo '<li class="list-group-item"><span class="btn-sm btn-success">正常</span>&nbsp;暂未发现网站安全问题</li>';
?>
	</ul>
</div>
</div>
<div class="col-sm-4">
	<div class="widget">
		<div class="widget-content border-bottom">
			<span class="pull-right text-muted"><i class="fa fa-circle"></i></span>
分站统计
		</div>
		<div class="widget-content widget-content-full-top-bottom border-bottom">
			<div class="row text-center">
				<div class="col-xs-6 push-inner-top-bottom border-right">
					<h4 class="widget-heading"><i class="fa fa-sitemap text-dark push"></i>&nbsp;分站/用户总数<br>
					<center><span id="count6"></span>个</font></center></h4>
				</div>
				<div class="col-xs-6 push-inner-top-bottom">
					<h4 class="widget-heading"><i class="fa fa-cloud text-dark push"></i>&nbsp;今日新开分站<br>
					<center><span id="count7"></span>个</center></h4>
				</div>
			</div>
		</div>
		<div class="widget-content widget-content-full border-bottom">
			<div class="row text-center">
				<div class="col-xs-6 push-inner-top-bottom border-right">
					<h4 class="widget-heading"><i class="fa fa-rmb text-dark push"></i>&nbsp;今日分站提成<br>
					<center><span id="count8"></span>元</center></h4>
				</div>
				<div class="col-xs-6 push-inner-top-bottom">
					<h4 class="widget-heading"><i class="fa fa-money text-dark push"></i>&nbsp;待处理提现<br>
					<center><a id="count11" href="tixian.php"></a>元</center></h4>
				</div>
			</div>
		</div>
		<div class="widget-content widget-content-full">
			<div class="row text-center">
				<div class="col-xs-12 push-inner-top-bottom border-right">
					<i class="fa fa-comment text-dark"></i>&nbsp;待处理工单数量：<a id="count17" href="workorder.php">0</a> 个
				</div>
			</div>
		</div>
	</div>

<div class="widget">
<div class="widget-content border-bottom">
<span class="pull-right text-muted"><i class="fa fa-info-circle"></i></span>环境信息
</div>
<ul class="nav nav-pills nav-stacked">
	<li>
		<a><b>PHP 版本：</b><?php echo phpversion() ?>&nbsp;&nbsp;&nbsp;<b>MySQL 版本：</b><?php echo $mysqlversion ?></a>
	</li>
	<li>
		<a><b>服务器软件：</b><?php echo $_SERVER['SERVER_SOFTWARE'] ?></a>
	</li>
	<li>
		<a><b>服务器时间：</b><?php echo $date ?></a>
	</li>
</ul>
</div>

    </div>
  </div> 
<script>
$(document).ready(function(){
	$('#title').html('正在加载数据中...');
	$.ajax({
		type : "GET",
		url : "ajax.php?act=getcount",
		dataType : 'json',
		async: true,
		success : function(data) {
			$('#title').html('后台管理首页');
			$('#yxts').html(data.yxts);
			$('#count1').html(data.count1);
			$('#count2').html(data.count2);
			$('#count3').html(data.count3);
			$('#count4').html(data.count4);
			$('#count5').html(data.count5);
			$('#count6').html(data.count6);
			$('#count7').html(data.count7);
			$('#count8').html(data.count8);
			$('#count9').html(data.count9);
			$('#count10').html(data.count10);
			$('#count11').html(data.count11);
			$('#count12').html(data.count12);
			$('#count13').html(data.count13);
			$('#count14').html(data.count14);
			$('#count15').html(data.count15);
			$('#count16').html(data.count16);
			$('#count17').html(data.count17);

			var t=$("#chart-classic-dash");$.plot(t,[{label:"订单量",data:data.chart.orders,lines:{show:!0,fill:!0,fillColor:{colors:[{opacity:.6},{opacity:.6}]}},points:{show:!0,radius:5}},{label:"交易量",data:data.chart.money,lines:{show:!0,fill:!0,fillColor:{colors:[{opacity:.6},{opacity:.6}]}},points:{show:!0,radius:5}}],{colors:["#5ccdde","#454e59"],legend:{show:!0,position:"nw",backgroundOpacity:0},grid:{borderWidth:0,hoverable:!0,clickable:!0},yaxis:{show:!1,tickColor:"#f5f5f5",ticks:3},xaxis:{ticks:data.chart.date,tickColor:"#f9f9f9"}});var s=null,r=null;t.bind("plothover",function(o,t,i){if(i){if(s!==i.dataIndex){s=i.dataIndex,$("#chart-tooltip").remove();var l=(i.datapoint[0],i.datapoint[1]);r=1===i.seriesIndex?"$ <strong>"+l+"</strong>":0===i.seriesIndex?"<strong>"+l+"</strong> sales":"<strong>"+l+"</strong> tickets",$('<div id="chart-tooltip" class="chart-tooltip">'+r+"</div>").css({top:i.pageY-45,left:i.pageX+5}).appendTo("body").show()}}else $("#chart-tooltip").remove(),s=null});
			$.ajax({
				url: '<?php echo $checkupdate?>',
				type: 'get',
				dataType: 'jsonp',
				async: true,
				jsonpCallback: 'callback'
			}).done(function(data){
				$("#checkupdate").html(data.msg);
			})
		}
	});
})
</script>
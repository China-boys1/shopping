<?php
$is_defend=true;
require '../includes/common.php';
list($background_image, $background_css) = \lib\Template::getBackground('../');
if($islogin2==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");

if(!$conf['qiandao_reward']){
	showmsg('当前站点未开启签到功能',3);
}
$_SESSION['isqiandao']=$userrow['zid'];

$day = date("Y-m-d");
$lastday = date("Y-m-d",strtotime("-1 day"));
if ($row = $DB->getRow("SELECT * FROM pre_qiandao WHERE zid='{$userrow['zid']}' AND date='$day' ORDER BY id DESC LIMIT 1")) {
	$isqiandao = true;
	$continue = $row['continue'];
}else{
	if ($row = $DB->getRow("SELECT * FROM pre_qiandao WHERE zid='{$userrow['zid']}' AND date='$lastday' ORDER BY id DESC LIMIT 1")) {
		$continue = $row['continue'];
	}else{
		$continue = 0;
	}
	$isqiandao = false;
}

$rs=$DB->query("SELECT * FROM pre_qiandao ORDER BY id DESC LIMIT 10");
$qqrow=array();
$qdrow=array();
while($res = $rs->fetch()){
	if(count($qqrow)<5){
		$qqrow[]=$res['qq'];
	}
	$qdrow[]=$res;
}

$title = '每日签到';

$url = 'http://'.$userrow['domain'].'/';
if($conf['fanghong_api']>0){
	$turl = fanghongdwz($url);
	if(strpos($turl,'/')===false){
		$turl = $url;
	}
}else{
	$turl = $url;
}
?>
<html lang="zh-cn" style="" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths"><head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>每日签到</title>
  <link href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link href="//cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/simple/css/plugins.css">
  <link rel="stylesheet" href="../assets/simple/css/main.css">
  <link rel="stylesheet" href="../assets/css/common.css">
    <link href="//cdn.staticfile.org/layui/2.5.7/css/layui.css" rel="stylesheet">
  <script src="//cdn.staticfile.org/modernizr/2.8.3/modernizr.min.js"></script>
  <link rel="stylesheet" href="../assets/user/css/my.css">
   <script src="//cdn.staticfile.org/jquery/1.12.4/jquery.min.js"></script>
    <script src="//cdn.staticfile.org/layui/2.5.7/layui.all.js"></script><link id="layuicss-laydate" rel="stylesheet" href="http://cdn.staticfile.org/layui/2.5.7/css/modules/laydate/default/laydate.css?v=5.0.9" media="all"><link id="layuicss-layer" rel="stylesheet" href="http://cdn.staticfile.org/layui/2.5.7/css/modules/layer/default/layer.css?v=3.1.1" media="all"><link id="layuicss-skincodecss" rel="stylesheet" href="http://cdn.staticfile.org/layui/2.5.7/css/modules/code.css" media="all">
  <!--[if lt IE 9]>
    <script src="//cdn.staticfile.org/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="//cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
    <?php echo str_replace('html','body',$background_css)?>
</head>
<body><style>

	 <?php if($userrow['power']==2){?>
.power_2{
     background-image:
     linear-gradient(to bottom, rgba(232, 138, 191, 0), rgba(232, 138, 191, 0) 70%, rgba(242, 242, 242, 1) 99%),
       linear-gradient(to right, rgba(240, 206, 114, 1.0),rgba(228, 78, 189, 1.0));
}
<?php	}elseif($userrow['power']==1){?>
.power_2{
     background-image:
     linear-gradient(to bottom, rgba(232, 138, 191, 0), rgba(232, 138, 191, 0) 70%, rgba(242, 242, 242, 1) 99%),
       linear-gradient(to right, rgba(141, 206, 241, 1.0),#7e45f6);
}
<?php }else{ ?>
.power_2{
    background-image: linear-gradient(to bottom, rgba(145, 143, 142, 0), rgba(153, 153, 153, 0) 70%, rgba(242, 242, 242, 1) 99%), linear-gradient(to right, rgba(194, 194, 194, 1), rgba(145, 143, 142, 1));
}
<?php }?>


	 
	 <?php if($userrow['power']==2){?>
	.power_2_user{
    background: -webkit-linear-gradient(left, rgba(228, 78, 189, 1.0), rgba(240, 206, 114, 1.0));
}
<?php	}elseif($userrow['power']==1){?>
	.power_2_user {
    background: -webkit-linear-gradient(left, #7e45f6, rgba(141, 206, 241, 1.0));}
<?php }else{ ?>
.power_2_user {
         background: -webkit-linear-gradient(left, rgba(145, 143, 142, 1.0), rgba(171, 166, 161, 1.0) 70%);
}
<?php }?>
</style>
<div class="col-xs-12 col-sm-10 col-md-6 col-lg-4 center-block "
     style="float: none; background-color:#f2f2f2;padding:0">
        <div class="block  block-all">
<div class="col-xs-12 col-sm-10 col-md-6 col-lg-4 center-block power_2"
     style="height:13rem;width:100%;position:absolute;top:0;left:0;padding-bottom: 230px;">
        <div class="block-white" style="margin-top:15px;">
          <div class="max-width:100%px; power_2_user" style="height: 4.7rem;overflow: hidden;position: relative;margin-bottom:7px;">
 		    <div class="display-row align-center justify-between" style="width:100%;height:50%;padding:0 1rem;margin-top:15px;">
                <div>
                   <a href="./"><img style="height: 2rem" src="/template/storenews/image/fanhui.png">&nbsp;&nbsp;
                   <font style="color:#fff;font-weight:600;font-size:14px;">
                       返回首页                        
                  </font>
                  </a>
               </div>
               <div style="font-size:.55rem;font-weight:300;color:#fff;" class="power_1_text">做一个良心的平台</div>
        </div>
    </div>
        <div style="background: #f2f2f2; height: 10px"></div>
        <div class="my-cell" style="margin-bottom: 0px;padding: 5px 10px;border-radius: 0">
            <div class="my-cell-title display-row justify-between align-center">
                <div class="my-cell-title-l left-title" style="font-size:1.3rem">每日签到</div>
                <div class="my-cell-title-r  display-row  align-center">
                    <a data-target="#fxhy" data-toggle="modal" title="点击分享本站" style="font-size:1.3rem;" class="display-row align-center">
                        <i class="fa fa-share" style="background: #0b9ff5;padding:3px;border-radius: 50px;color: #fff;font-size: .75rem;"></i>
                        <font style="margin-top: 2.5px;margin-left: 5px">分享</font>
                    </a>
                </div>

            </div>
            <div style="padding: 0 5px;color:#f3f3f3;font-size: 1.2rem" class="display-row align-center justify-between">
                <div style="width: 32%; height: 7rem;border-radius:5px;background-image:linear-gradient(to right, rgba(239, 154, 183, 1), rgba(233, 95, 95, 1));position: relative">

                    <li style="position: absolute;top: 15%;left: 7%"><font size="5" color="#fff" id="count1"></font>人</li>
                    <li style="position: absolute;bottom: 20%;left: 7%"> 今日签到</li>
                    <img style="width:2.5rem;position: absolute;top: 0;right: 10%;" src="../assets/user/img/qiandao1.png">
                </div>
                <div style="width: 32%; height: 7rem;border-radius:5px;background-image:linear-gradient(to right, rgba(130, 193, 255, 1), rgba(148, 93, 246, 1));position: relative">

                    <li style="position: absolute;top: 15%;left: 7%"><font size="5" color="#fff" id="count2"></font>人</li>
                    <li style="position: absolute;bottom: 20%;left: 7%"> 昨日签到</li>
                    <img style="width:2.5rem;position: absolute;top: 0;right: 10% " src="../assets/user/img/qiandao2.png">
                </div>
                <div style="width: 32%; height: 7rem;border-radius:5px;background-image:linear-gradient(to right, rgba(252, 198, 108, 1), rgba(249, 138, 63, 1));position: relative">
                    <li style="position: absolute;top: 15%;left: 7%"><font size="5" color="#fff" id="count3"></font>人</li>
                    <li style="position: absolute;bottom: 20%;left: 7%"> 累计签到</li>
                    <img style="width:2.5rem;position: absolute;top: 0;right: 10% " src="../assets/user/img/qiandao3.png">
                </div>
            </div>
            <div class="text-center" style="padding: 15px 5px;">
                <button type="button" class="btn btn-default btn-block" id="qiandao" style="width: 100%;display: inline-block;border-radius: 5px;padding: 10px 0">
                    <span style="font-size:16px; "><i class="fa fa-calendar-check-o"></i> <?php echo $isqiandao==true?'今天已签到':'立即签到';?></span>
                </button>
            </div>
        </div>
        <div style="background: #f2f2f2; height: 10px"></div>
        <div class="my-cell" style="margin-bottom: 0px;padding: 5px 10px;border-radius: 0">
            <div class="my-cell-title display-row justify-between align-center">
                <div class="my-cell-title-l left-title" style="font-size:1.3rem">签到榜</div>
            </div>
            <div style="width: 100%; padding: 5px 0;display: flex">
<?php
foreach($qqrow as $row){
	echo '
                    <div style="width: 25%;text-align: center">
                               <img style="width: 85%;border-radius: 50%;border: 1px solid #ddd;" src="http://q4.qlogo.cn/headimg_dl?dst_uin='.$row.'&amp;spec=100">
                               <div style="width: 100%; padding: 10px 0;font-size: 1.1rem">已签'.$row['continue'].'天</div>
                             </div>';
}
?>

            </div>
        </div>
        <div style="background: #f2f2f2; height: 10px"></div>
        <div class="my-cell" style="margin-bottom: 0px;padding: 5px 10px;border-radius: 0">

            <div style="width: 100%; padding: 5px 0;display: flex">

                <table class="table">
                    <tbody>
                        <?php
foreach($qdrow as $row){
	echo '
                    <tr>
                                <th colspan="3" style="font-size: 13px;border-top: 0px solid #ddd;font-weight: 0;color:#bfbbbb;line-height: 20px">
                                    <span class="pull-right label label-info" style="background: #0b9ff5;border-radius: 5px;padding: 4px 8px">
                                        <small>连续'.$row['continue'].'天</small>
                                    </span>
                                    <i class="fa fa-user-o" style="color: #0b9ff5"></i><font color="#6e6e6e"> ZID('.$row['zid'].' )</font>  于'.date("H:i",strtotime($row['time'])).'签到获得奖励'.$row['reward'].'元!
                                </th>
                            </tr>';
}
?>                 </tbody>
                </table>
            </div>
        </div>
	</div>
</div>
       <!--复制广告词分享开始-->
<div class="modal fade col-xs-12 " align="left" id="fxhy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <br>
          <br>
          <br>
          <div class="modal-dialog panel panel-primary  animation-fadeInQuick2">
            <div class="modal-content ">
              <div class="modal-header">
                <button type="button" class="close " data-dismiss="modal">
                  <span aria-hidden="true">
                    <i class="fa fa-times-circle"></i>
                  </span>
                  <span class="sr-only">Close</span></button>将网站分享给好友</div>
              <li class="list-group-item">
                <div class="input-group">
                  <div class="input-group-addon">广告语</div>
                  <textarea id="fxggc" class="form-control" rows="5" cols="30" readonly="" unselectable="on">网站 <?php echo $conf['sitename'] ?>
每天签到奖励现金哦！
快来和我一起领取吧
网址:<?php echo $turl?>

</textarea></div>
              </li>
              <li class="list-group-item">
                <button data-clipboard-target="#fxggc" class="btn btn-sm btn-block btn-success fenx">点击一键复制分享语</button></li>
              <li class="list-group-item"></li>
            </div>
          </div>
        </div>      
        <!--复制广告词分享结束-->
<script src="//cdn.staticfile.org/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="//cdn.staticfile.org/clipboard.js/1.7.1/clipboard.min.js"></script>
<script>

    document.documentElement.addEventListener('touchstart', function (event) {
        if (event.touches.length > 1) {
            event.preventDefault();
        }
    }, {
        passive: false
    });

    // 禁用双击放大
    var lastTouchEnd = 0;
    document.documentElement.addEventListener('touchend', function (event) {
        var now = Date.now();
        if (now - lastTouchEnd <= 300) {
            event.preventDefault();
        }
        lastTouchEnd = now;
    }, {
        passive: false
    });
var clipboard = new Clipboard('.fenx');
clipboard.on('success', function(e) {
  	layer.msg("复制成功,快去分享给朋友一起来领免费名片赞吧！", {icon: 1});
});
clipboard.on('error', function(e) {
     layer.msg("复制失败，请长按链接后手动复制", {icon: 2});
});	
$(document).ready(function(){
	$("#qiandao").click(function(){
		$.ajax({
		 type: "get",
		 url: "ajax_user.php?act=qiandao",
		 dataType: "json",
		 success: function(data){
			if(data.code == 0){
				layer.alert(data.msg,{icon:6},function(){
					window.location.reload();
				})
			}else{
				layer.alert(data.msg,{icon:5})
			}
		 },
		 error: function(){
			layer.alert('签到失败，请稍后刷新重试！'); 
		 }
	   });
	});
	$.ajax({
		type : "GET",
		url : "ajax_user.php?act=qdcount",
		dataType : 'json',
		async: true,
		success : function(data) {
			$('#count1').html(data.count1);
			$('#count2').html(data.count2);
			$('#count3').html(data.count3);
			$('#rewardcount').html(data.rewardcount);
		}
	});
})
</script>

</body></html>
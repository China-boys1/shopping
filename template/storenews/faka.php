<?php
if(!defined('IN_CRONLITE'))exit();

$id=intval($_GET['id']);
if(md5($id.SYS_KEY.$id)!==$_GET['skey'])exit("<script language='javascript'>alert('验证失败');history.go(-1);</script>");
$row=$DB->getRow("SELECT * FROM pre_orders WHERE id='$id' LIMIT 1");
if(!$row)exit("<script language='javascript'>alert('当前订单不存在！');history.go(-1);</script>");
$tool=$DB->getRow("SELECT * FROM pre_tools WHERE tid='{$row['tid']}' LIMIT 1");
if($tool['is_curl']!=4 && $row['djzt']!=3)exit("<script language='javascript'>alert('非发卡类商品！');history.go(-1);</script>");
$count = ($tool['value']>1?$tool['value']:1)*$row['value'];
$rs=$DB->query("SELECT * FROM pre_faka WHERE tid='{$row['tid']}' AND orderid='$id' ORDER BY kid ASC LIMIT {$count}");
$kmdata='';
$rcount=0;
while($res = $rs->fetch())
{
	$rcount++;
	if(!empty($res['pw'])){
		$kmdata.='卡号：'.$res['km'].' 密码：'.$res['pw']."\r\n";
	}else{
		$kmdata.=$res['km']."\r\n";
	}
}
if(strlen($kmdata)>2)$kmdata=substr($kmdata,0,-2);
/*if($rcount<$count){
	$scount = $count-$rcount;
	$rs=$DB->query("SELECT * FROM pre_faka WHERE tid='{$row['tid']}' AND orderid=0 ORDER BY kid ASC LIMIT {$scount}");
	while($res = $rs->fetch())
	{
		if(!empty($res['pw'])){
			$kmdata.='卡号：'.$res['km'].' 密码：'.$res['pw']."\r\n";
		}else{
			$kmdata.=$res['km']."\r\n";
		}
		$DB->exec("update `pre_faka` set `orderid`='$id',`usetime`='$date' where `kid`='{$res['kid']}'");
	}
}*/
?>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>卡密查看</title>
  <link href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="//cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="../assets/simple/css/plugins.css">
  <link rel="stylesheet" href="../assets/simple/css/main.css">
  <link rel="stylesheet" href="../assets/css/common.css">
    <link href="//cdn.staticfile.org/layui/2.5.7/css/layui.css" rel="stylesheet"/>
  <script src="//cdn.staticfile.org/modernizr/2.8.3/modernizr.min.js"></script>
  <link rel="stylesheet" href="../assets/user/css/my.css">
   <script src="//cdn.staticfile.org/jquery/1.12.4/jquery.min.js"></script>
    <script src="//cdn.staticfile.org/layui/2.5.7/layui.all.js"></script>
  <!--[if lt IE 9]>
    <script src="//cdn.staticfile.org/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="//cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
<style>body{ background:#ecedf0 url("//cn.bing.com/th?id=OHR.PurnululuNP_ZH-CN0102753224_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp") fixed;background-repeat:no-repeat;background-size:100% 100%;}</style></head>
<body><link rel="stylesheet" href="../assets/user/css/work.css">
<style>
    .item-c-title{
        width: 25%;
    }
    .list-item .list-item-c .item-c-txet .item-c-data{
        margin-left: 0;
    }
    input::placeholder{
        text-align: right;
    }
    input{
        text-align: right;
    }
    .form-control[disabled]{
        background-color:transparent;
    }
    .search-input::placeholder{
        text-align: left;
    }
    .layui-layer {
        /*background: #fff;*/
    }
</style>
<div class="col-xs-12 col-sm-10 col-md-6 col-lg-4 center-block " style="float: none; background-color:#f2f2f2;padding:0">
    <div class="block  block-all">


                    <div class="block-back block-white">
                <a href="./?mod=query" class="font-weight display-row align-center">
                    <img style="height: 2rem" src="../assets/user/img/close.png"></img>&nbsp;&nbsp;
                    <font>卡密查看</font>
                </a>
            </div>
            
            <div style="background: #f2f2f2; height: 10px"></div>
            
            <div class="my-cell" style="margin-bottom: 0px;padding:0;">
				<div style="font-weight: 700;padding:20px 10px">
				    <?php echo $tool['name']?>
				</div>
                <div id="txt_0" style="word-break:break-all;padding:10px;background: #f7f7f7;width: 100%;font-size: 1.5rem;min-height:15rem;color: #8b8a8a">
                <?php echo $kmdata?>            </div>
                <div style="font-weight: 700;padding:20px 10px" class="text-right">
                    <button class="btn form-group-border btn-rounded" style="color: #0b9ff5;" type="button" data-clipboard-action="copy" data-clipboard-target="#txt_0" id="clipboard_btn">复制全部</button>
                </div>
			</div>
			
			<script src="<?php echo $cdnpublic?>jquery/1.12.4/jquery.min.js"></script>
<script src="<?php echo $cdnpublic?>twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<?php echo $cdnpublic?>layer/2.3/layer.js"></script>
<script src="<?php echo $cdnpublic?>FileSaver.js/2014-11-29/FileSaver.min.js"></script>
<script src="<?php echo $cdnpublic?>clipboard.js/1.7.1/clipboard.min.js"></script>
<script>
	$("#saveas-bt").on("click", function () {
		var txt = $("#txt_0").val();
		if (txt.indexOf('\r\n') < 0) {
			txt = txt.replace(/\n/g, "\r\n");
		}
		var fileName = (new Date()).toISOString().substr(0, 10) + ".txt";
		var blob = new Blob([txt], {type: "text/plain;charset=utf-8"});
		saveAs(blob, fileName);
	});
	var clipboard = new Clipboard('#clipboard_btn');
	clipboard.on('success', function (e) {
		layer.msg('复制成功')
	});
	clipboard.on('error', function (e) {
		layer.msg('复制失败')
	});
</script>
</body>
</html>
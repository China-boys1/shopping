<?php
/**
 * 分类管理
**/
include("../includes/common.php");
list($background_image, $background_css) = \lib\Template::getBackground('../');
if($islogin2==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");

$my=isset($_GET['my'])?$_GET['my']:null;
?>
<html lang="zh-cn" style="" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths"><head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>项目投稿</title>
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
<body>  



<style>
    input::placeholder{
        text-align: right;
    }
    
    
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
            <?php
 if($my=='add') {
 ?>
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

        <div class="form-group form-group-transparent" style="background: #f2f2f2;">
            <div class="input-group" style="width:100%">
                <div class="input-group-addon" style="color:#969494;font-size:13px;">
                   项目信息
                </div>
                <div></div>
            </div>
        </div>

        <form action="./contributes.php?my=adds" method="POST"  onsubmit="return checkinput()">
       
            <div class="form-group form-group-transparent form-group-border-bottom">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        项目名称*
                    </div>
                    <input type="text" class="form-control" name="name" value="" required="" placeholder="请输入项目名称">
                </div>
            </div>
            <div class="form-group form-group-transparent form-group-border-bottom">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        项目分类*
                    </div>
                    <select name="cid" id="cid" class="form-control" default="">
                        <option value="0">请选择</option>
                        <?php
$rs=$DB->query("SELECT * FROM pre_class WHERE active=1 ORDER BY sort ASC");
while($res = $rs->fetch())
{
	echo '<option value="'.$res['cid'].'">'.$res['name'].'</option>';
}
?>
                    </select>
                </div>
            </div>
            
            <div class="form-group form-group-transparent form-group-border-bottom">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        项目封面
                    </div>
                    <input type="file" id="file" onchange="fileUpload()" style="display:none;">
                    <input type="text" class="form-control" id="shopimg" name="shopimg" value="" style="visibility: hidden;">
                    <span class="input-group-btn" style="padding-right: 10px">
                        <a href="javascript:fileSelect()" title="上传图片">
                             <img style="width: 8rem; height: 8rem; " id="fileimg" 
                             src="../assets/user/img/add_img.svg"></img>
                        </a>
                   </span>
                   
                </div>
            </div>
            <div class="form-group form-group-transparent">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        项目简介
                    </div>
                    <div class="form-control  form-control-left" style="color:#696969">请尽量完善商品相关简介</div>
                </div>
            </div>
            <div class="form-group form-group-transparent">
                <div class="ke-container ke-container-default" style="width: 100%;"><textarea class="form-control" id="editor_id" name="desc" rows="3" style="width: 100%; display: none;" placeholder="当选择该商品时自动显示，支持HTML代码"></textarea>
            </div>
            <div class="form-group form-group-transparent">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        资源链接
                    </div>
                    <div style="color:#696969" class="form-control form-control-left">请输入正确有效的链接</div>
                </div>
            </div>
            <div class="form-group form-group-transparent form-group-border-bottom">
                <textarea class="form-control" name="goods_param" placeholder="请输入资源下载地址,如：百度网盘分享链接"></textarea>
            </div>
            <div class="form-group form-group-transparent form-group-border-bottom">
                <div class="input-group" style="width:100%">
                    <div class="input-group-addon">
                        联系微信*
                    </div>
                    <input type="text" class="form-control" name="wx_test" value="" required="" placeholder="联系方式(微信号)">
                </div>
            </div>
            <div class="text-center" style="padding: 30px 0;background: #f2f2f2;">
                <input type="submit" class="btn submit_btn" style="width: 80%;padding:8px;background-image:linear-gradient(to right , rgba(252, 184, 67, 1.0), rgba(255, 134, 62, 1.0));" value="确定提交">
            </div>
        </form>
        
     </div>

<script>

</script> 
























<?php
}
if($my=='adds')
{
$name=daddslashes($_POST['name']);
$cid=daddslashes($_POST['cid']);
$shopimg=daddslashes($_POST['shopimg']);
$desc=daddslashes($_POST['desc']);
$goods_param=daddslashes($_POST['goods_param']);
$wx_test=daddslashes($_POST['wx_test']);
$yhid=$userrow['zid'];
$sql="insert into `pre_tools` (`name`,`cid`,`pro`,`shopimg`,`desc`,`goods_param`,`wx_test`,`close`,`active`,`addtime`) values (:name,:cid,:pro,:shopimg,:desc,:goods_param,:wx_test,1,1,NOW())";
	$data = [':name'=>$name, ':cid'=>$cid, ':pro'=>$yhid, ':shopimg'=>$shopimg, ':desc'=>$desc , ':goods_param'=>$goods_param , ':wx_test'=>$wx_test];
	if($DB->exec($sql, $data)){
	showmsg('添加成功！<br/><br/><a href="./tougao.php">>>返回列表</a>',1);
	}else{
		showmsg('添加失败！'.$DB->error(),4);
	}
}
?>



<script src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="../assets/js/edit.js?ver=2055"></script>
<script charset="utf-8" src="../assets/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="../assets/kindeditor/zh-CN.js"></script>
<script>
    $(document).ready(function(){
        if($_GET.my == 'add'){
            openmsg()
        }
    });
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
var $_GET = (function(){
    var url = window.document.location.href.toString();
    var u = url.split("?");
    if(typeof(u[1]) == "string"){
        u = u[1].split("&");
        var get = {};
        for(var i in u){
            var j = u[i].split("=");
            get[j[0]] = j[1];
        }
        return get;
    } else {
        return {};
    }
})();

KindEditor.ready(function(K) {
	window.editor = K.create('#editor_id', {
		resizeType : 1,
		allowUpload : false,
		allowPreviewEmoticons : false,
		uploadJson : './ajax.php?act=article_upload',
		items : [
			'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
			'removeformat','formatblock','hr', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
			'insertunorderedlist', '|', 'image','fullscreen','source','preview'],
        minHeight:200
	});
});
    function  openmsg() {
        layer.open({
            type:1,
            title: false,
            area: '30rem',
            shade: 0.7,
            skin: "layui-layer-lan",
            shadeClose: false,
            closeBtn: 0,
            offset: '20%',
            resize:0,
            content: '<div class="showtip display-column  align-center"style="position: relative" >'+

                '<img style="width:100%" src="../assets/user/img/contribute.png">'+
                '<img onclick="layer.closeAll();"  style="height: 2rem;position: absolute;top:2rem;right:2rem" src="../assets/user/img/close.png">'+
                '</div>',
            success: function(layero, index){
                var bg= $(".layui-layer");
                bg.css({
                    "box-shadow":"transparent",
                    "background": "transparent",
                })
            }
        });

    }
</script>

<div class="layui-layer-move"></div></body></html>

<?php
/**
 * 自助下单系统
**/
include("../includes/common.php");
$title='商品介绍替换';
include './head.php';
if($islogin==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");

?>
<style>
@media (max-width:767px){
.showcountl{padding-right: 5px;}
.showcountr{padding-left: 5px;}
}
</style>
<div class="row">
  <div class="col-sm-10 col-md-12 center-block" >
<div class="block">
<div class="block-title"><h3 class="panel-title">商品介绍替换</h3></div>
<?php if($_GET['tpye']=='up'){
$add=$_POST['add'];
$end=$_POST['end'];
  
     $rs=$DB->query("SELECT * FROM pre_tools where `desc` like '%$add%'");
  
     $i=0;
while($res = $rs->fetch()){
    $i++;
  $str1 = str_replace("$add","$end",$res['desc']);
  $id=$res['tid'];
  $results=$DB->exec("update pre_tools set `desc`='$str1' where tid='{$id}'");
  if($results){echo $id.'替换成功<br/>';	echo("<script language='javascript'>history.go(-1);</script>");
  }else{echo $id.'替换失败<br/>';	echo("<script language='javascript'>history.go(-1);</script>");}
  
} 
if($i<1){	exit("<script language='javascript'>alert('未找到替换内容的商品！');history.go(-1);</script>");}
}?>
<form action="./shopnoo.php?tpye=up" method="POST">

<div class="form-group">
	<div class="input-group">
		<span class="input-group-addon">
			替换前
		</span>
		<textarea class="form-control" id="add" name="add" rows="8" ></textarea>
	</div>
</div>

<div class="form-group">
	<div class="input-group">
		<span class="input-group-addon">
			替换后
		</span>
		<textarea class="form-control" id="end" name="end" rows="8" ></textarea>
	</div>
</div>

	<button type="submit" class="btn btn-primary btn-block">确认提交</button>
</div>
</form>
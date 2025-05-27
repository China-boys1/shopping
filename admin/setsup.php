<?php
include("../includes/common.php");
$title='商品投稿设置';
include './head.php';
include("../config.php");
if($islogin==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");
?>
<style>
#orderItem .orderTitle{word-break:keep-all;}
#orderItem .orderContent{word-break:break-all;}
</style>
	<div class="col-sm-12 col-md-10 col-lg-8 center-block" style="float: none;">
<div class="block">
<div class="">
    <div id="myTabContent" class="tab-content">

<div class="tab-pane fade in active" id="set">
<form onsubmit="return saveSetting(this)" method="post" class="form-horizontal form-bordered" role="form">
    
	<div class="form-group">
	  <label class="col-sm-3 control-label">上架商品用户购买价格</label>
	  <div class="col-sm-9"><input type="text" name="suptoolspic" value="<?php echo $conf['suptoolspic']; ?>" class="form-control" placeholder="上架商品销售价格"/></div>
	  	  <span class="glyphicon glyphicon-info-sign">该价格不能低于投稿者提成加分站提成！如果你还想赚钱建议设置高一点</span>
	</div>
	<div class="form-group">
	  <label class="col-sm-3 control-label">上架商品初级版分站价格</label>
	  <div class="col-sm-9"><input type="text" name="suptoolspic1" value="<?php echo $conf['suptoolspic1']; ?>" class="form-control" placeholder="上架商品销售价格"/></div>
	  <span class="glyphicon glyphicon-info-sign">该价格不能低于投稿者提成加高分站提成！如果你还想赚钱建议设置高一点</span>
	</div>
	<div class="form-group">
	  <label class="col-sm-3 control-label">上架商品高级版分站价格</label>
	  <div class="col-sm-9"><input type="text" name="suptoolspic2" value="<?php echo $conf['suptoolspic2']; ?>" class="form-control" placeholder="上架商品销售价格"/></div>
	  <span class="glyphicon glyphicon-info-sign">该价格不能低于投稿者提成加你想赚的钱！如果你还想赚钱建议设置高一点!</span>
	</div>
	<div class="form-group">
	  <label class="col-sm-3 control-label">商品每份投稿者提成</label>
	  <div class="col-sm-9"><input type="text" name="suppic" value="<?php echo $conf['suppic']; ?>" class="form-control" placeholder="填写0则为投稿后商品被其他用户购买无提成"/></div>
	  <span class="glyphicon glyphicon-info-sign">设置提成请注意默认商品价格是否可以满足分站的提成以及自己的提成！如设置用户上架的商品为9元你设置的提成为4元，分站的提成不能高于5元否则您将亏本！！</span>
	</div>
	
	<div class="form-group">
	  <label class="col-sm-3 control-label">商品上架额度购买价格</label>
	  <div class="col-sm-9"><input type="text" name="supedpic" value="<?php echo $conf['supedpic']; ?>" class="form-control" placeholder="该功能暂时不可用！请等待后续更新！"/></div>
	</div>
	<div class="form-group">
	  <div class="col-sm-offset-3 col-sm-9"><input type="submit" name="submit" value="修改" class="btn btn-primary btn-block"/>
	 </div>
	</div>
	<div class="panel-footer"><span class="glyphicon glyphicon-info-sign"></span>插件售后群：<a href="111111111111" target="_blank" rel="noreferrer">点此进入</a></div>
  </form>
</div>
</div>
</div>
<script src="<?php echo $cdnpublic?>layer/3.1.1/layer.js"></script>
<script>
function saveSetting(obj){
	var ii = layer.load(2, {shade:[0.1,'#fff']});
	$.ajax({
		type : 'POST',
		url : 'ajax.php?act=set',
		data : $(obj).serialize(),
		dataType : 'json',
		success : function(data) {
			layer.close(ii);
			if(data.code == 0){
				layer.alert('设置保存成功！', {
					icon: 1,
					closeBtn: false
				}, function(){
				  window.location.reload()
				});
			}else{
				layer.alert(data.msg, {icon: 2})
			}
		},
		error:function(data){
			layer.msg('服务器错误');
			return false;
		}
	});
	return false;
}
</script>
</body>
</html>
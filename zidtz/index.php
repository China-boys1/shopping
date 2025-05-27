<?php 

include("../includes/common.php");
$zid=$_GET['zid'];
$info=$DB->getRow("SELECT * FROM pre_site WHERE zid='$zid'");
if(!$info){include('../zidtz/tips/index.html');die;}
$url=$info['domain'];
?>
<script>
    window.location.href = "http://<?php echo $url;?>";
</script>
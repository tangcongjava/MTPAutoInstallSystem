<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/9/7
 * Time: 16:52
 */
$mainversion="";
if($_GET["id"] ==1){
   $mainversion="TAS_gdiex";
}elseif($_GET["id"]==2){
   $mainversion="TAS_main";
}elseif($_GET["id"] ==3){
   $mainversion="TAS_qyexchange";
}elseif($_GET["id"]==4){
   $mainversion="product_v1";
}elseif($_GET["id"]==5){
   $mainversion="wetas";
}elseif($_GET["id"]==6){
   $mainversion="product_v2";

}elseif($_GET["id"]==7){
   $mainversion="TAS_ppcx64";
}elseif($_GET["id"] == 9){
   $mainversion="product_v3";
}

$sql = "select a.revision,a.remark from revision  as a where a.pid = ( SELECT id from product as b where  `name` = '{$mainversion}') and `status`=1 ORDER  BY id DESC ";
$cfgpath = $_SERVER['DOCUMENT_ROOT']."/tasintall/config/config.ini";
$cfgvalue = parse_ini_file($cfgpath,true);
//获取构建数据参数

$dbip = $cfgvalue["builddb"]["dbip"];//'192.168.30.153';
$dbname = $cfgvalue["builddb"]["dbname"];//'build';
$dbpasswd = $cfgvalue["builddb"]["dbpswd"];//'mysql';
$dbport = $cfgvalue["builddb"]["dbport"];//3306;
$dbuserame =$cfgvalue["builddb"]["dbusername"];//
$myslqi  = new mysqli($dbip,$dbuserame,$dbpasswd,$dbname,$dbport);
mysqli_query($myslqi,"SET NAMES utf8");
$res = $myslqi->query($sql);
$id = 1;
$subversion = array();
if(mysqli_connect_errno()){
   echo 'connect wrong';
   exit;
}
while($row=$res->fetch_assoc()){
   $subversion[] =array("id"=>$id,"text"=>$row['revision'],"value"=>$row['revision'],"remark"=>$row['remark']);
   $id +=1;

}
echo json_encode($subversion);
$myslqi->close();

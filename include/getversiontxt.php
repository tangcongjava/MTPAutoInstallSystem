<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-21
 * Time: 上午11:02
 */
$mainversion = $_POST['mainversion'];
$subversion = $_POST['subversion'];
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
$sql = "select a.remark from revision as a where a.revision='$subversion' and a.pid = (select id from product where name = '$mainversion')";
$res = $myslqi->query($sql);
$remark = array();
while($row = $res->fetch_assoc()){
    $remark[] = $row["remark"];
   }
echo json_encode($remark);


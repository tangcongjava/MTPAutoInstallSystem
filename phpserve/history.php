<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-16
 * Time: 上午11:24
 */
include_once("../include/getCftIniValue.php");
include_once("../include/mysqlMGR.php");
$dbip= getDBCfg("appdb","dbip");
$dbport = getDBCfg("appdb","dbport");
$username=getDBCfg("appdb","dbusername");
$dbpswd = getDBCfg("appdb","dbpswd");
$dbname = getDBCfg("appdb","dbname");
$mysqli = new mysqlMGR($username,$dbpswd,$dbport,$dbip,$dbname);
$sqlresult = $mysqli->selectvalue("history");
while($row = $sqlresult->fetch_assoc()){
    $resultarr[]  =  array("id"=>$row["id"],"mainversion"=>$row["mainversion"],"subversion"=>$row['subversion'],"bankuser"=>$row['bankuser'],"bankpswd"=>$row['bankpswd'],"tasuser"=>$row['tasuser'],"taspassword"=>$row['taspassword'],"tasdbport"=>$row['tasdbport'],"tasdbip"=>$row['tasdbip'],"tasdbinstance"=>$row['tasdbinstance'],'linuxip'=>$row['linuxip'],"rabbituri"=>$row['rabbituri'],"secondip"=>$row['secondip'],"secondport"=>$row["seconport"],"hqdbip"=>$row["hqdbip"],"hqdbname"=>$row['hqdbname'],"hqdbuser"=>$row["hqdbuser"],"hqdbpswd"=>$row["hqdbpswd"],"hqtoip"=>$row['hqtoip'],'hqlistenport'=>$row['hqlistenport'],'winzipurl'=>$row['winzipurl'],'lnxzipurl'=>$row['lnxzipurl']);
}
echo json_encode($resultarr);

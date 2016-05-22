<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-16
 * Time: 上午9:10
 */
include_once("./getCftIniValue.php");
include_once("./mysqlMGR.php");
$dbip= getDBCfg("appdb","dbip");
$dbport = getDBCfg("appdb","dbport");
$username=getDBCfg("appdb","dbusername");
$dbpswd = getDBCfg("appdb","dbpswd");
$dbname = getDBCfg("appdb","dbname");
$mysqli = new mysqlMGR($username,$dbpswd,$dbport,$dbip,$dbname);
$sqlresult = $mysqli->selectvalue("history");
while($row = $sqlresult->fetch_assoc()){
    $resultarr[]  =  array("bankuser"=>$row['bankuser'],"bankpswd"=>$row['bankpswd'],"tasuser"=>$row['tasuser'],"taspassword"=>$row['taspassword'],"tasdbport"=>$row['tasdbport'],"tasdbip"=>$row['tasdbip'],"tasdbinstance"=>$row['tasdbinstance'],'linuxip'=>$row['linuxip'],"rabbituri"=>$row['rabbituri'],"secondip"=>$row['secondip'],"secondport"=>$row["seconport"],"hqdbip"=>$row["hqdbip"],"hqdbname"=>$row['hqdbname'],"hqtoip"=>$row['hqtoip'],'hqlistenport'=>$row['hqlistenport']);
}
echo json_encode($resultarr);


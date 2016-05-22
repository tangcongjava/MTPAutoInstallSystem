<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-17
 * Time: 下午1:45
 */
include_once("../include/getCftIniValue.php");
include_once("../include/mysqlMGR.php");
$dbname = getDBCfg("appdb","dbname");
$dbuser = getDBCfg("appdb","dbusername");
$dbport = getDBCfg("appdb","dbport");
$dbpswd = getDBCfg("appdb","dbpswd");
$dbip = getDBCfg("appdb","dbip");

$id = $_POST["id"];
$mysqli = new mysqli($dbip,$dbuser,$dbpswd,$dbname,$dbport);
$sql = sprintf("SELECT e.id,a.dbname AS bankuser, a.dppswd AS bankpswd, g.dbname as tasuser, g.dppswd as taspassword, g.dpport as tasdbport, g.dpip as tasdbip, g.dbinstance as tasdbinstance,  c.lnxip as linuxip, d.uri as rabbituri, f.ip as secondip, f.port  as seconport, b.hqdbip as hqdbip, b.hqdbname as hqdbname, b.hqdbusr as hqdbuser,b.hqdbpswd as hqdbpswd, b.hqip as hqtoip, b.hqport as hqlistenport    FROM bankdb AS a, hq AS b, linuxserver AS c, rabbit AS d, rel AS e, secondSrv AS f, tasdb AS g WHERE e.bankdbid = a.id AND e.hqid = b.id AND e.lnxid = c.id AND e.rabbitid = d.id AND e.secondid = f.id AND e.tasdbid = g.id and e.id=%d",$id);
$res =$mysqli->query($sql);
while($row=$res->fetch_assoc()){
    $data = array("id"=>$row["id"],"bankuser"=>$row['bankuser'],"bankpswd"=>$row['bankpswd'],"tasuser"=>$row['tasuser'],"taspassword"=>$row['taspassword'],"tasdbport"=>$row['tasdbport'],"tasdbip"=>$row['tasdbip'],"tasdbinstance"=>$row['tasdbinstance'],'linuxip'=>$row['linuxip'],"rabbituri"=>$row['rabbituri'],"secondip"=>$row['secondip'],"secondport"=>$row["seconport"],"hqdbip"=>$row["hqdbip"],"hqdbname"=>$row['hqdbname'],"hqdbuser"=>$row["hqdbuser"],"hqdbpswd"=>$row["hqdbpswd"],"hqtoip"=>$row['hqtoip'],'hqlistenport'=>$row['hqlistenport']);;
}

echo json_encode($data);
$mysqli->close();
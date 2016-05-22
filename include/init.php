<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/27
 * Time: 11:15
 */
include_once("mysqlMGR.php");
$arg=$_POST["srvname"];
$cfgpath = $_SERVER['DOCUMENT_ROOT']."/tasintall/config/config.ini";
$cfgvalue = parse_ini_file($cfgpath,true);
$dbip = $cfgvalue["appdb"]["dbip"];//'192.168.30.153';
$dbname = $cfgvalue["appdb"]["dbname"];//'build';
$dbpasswd = $cfgvalue["appdb"]["dbpswd"];//'mysql';
$dbport = $cfgvalue["appdb"]["dbport"];//3306;
$dbuserame =$cfgvalue["appdb"]["dbusername"];//'root';
$handle = new mysqlMGR($dbuserame,$dbpasswd,$dbport,$dbip,$dbname);
//$arg="rabbitmq";
$rabtarr=array();
if($arg =='rabbitmq') {
    $res = $handle->selectvalue('rabbitmq');
    $rabtarr = $res->fetch_assoc();
    echo json_encode($rabtarr);
}else if($arg == 'lnx'){
    $res = $handle->selectvalue('lnx');
    $lnxarr = $res->fetch_assoc();
    echo json_encode($lnxarr);

}else if($arg=='tas'){
    $res =$handle->selectvalue('tas');
    $tasarr = $res->fetch_assoc();
    echo json_encode($tasarr);
}else if($arg=='bank'){
    $res = $handle->selectvalue("bank");
    $bankarr = $res->fetch_assoc();
    echo json_encode($bankarr);
}else if($arg =='hq'){
    $res = $handle->selectvalue("hq");
    $hqarr = $res->fetch_assoc();
    echo json_encode($hqarr);
}elseif($arg =='secondsrv'){
    $res = $handle->selectvalue('secondsrv');
    $secondsrv = $res->fetch_assoc();
    echo json_encode($secondsrv);
}


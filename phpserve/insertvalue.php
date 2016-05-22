<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-17
 * Time: 下午3:19
 */
include_once("../include/mysqlMGR.php");
include_once("../include/getCftIniValue.php");
$rabbitmq = array();
$rabbitmq['rabbituri']=$_POST['rabbituri'];
//һ���������
$lnxarr = array();
$lnxarr['ip'] = $_POST['lnxip'];
//������ݿ����
//tas������ݿ����
$tasarr = array();
$tasarr['dbname'] = $_POST['tasuser'];
$tasarr['dppswd'] = $_POST['taspswd'];
$tasarr['dpip']  = $_POST['tasip'];
$tasarr['dpport'] = $_POST['tasport'];
$tasarr['dbinstance'] = $_POST['tasinstance'];
//bank db value
$bankarr = array();
$bankarr['dbname'] = $_POST['bankuser'];
$bankarr['dppswd'] = $_POST['bankpswd'];
$bankarr['dpip']  = $tasarr['dpip'];
$bankarr['dpport'] = $tasarr['dpport'];
$bankarr['dbinstance'] = $tasarr['dbinstance'];
//�������
$hqarr = array();
$hqarr['hqdbuser']=$_POST['hqdbuser'];
$hqarr['hqdbpswd'] = $_POST['hqdbpswd'];
$hqarr['hqdbip'] = $_POST['hqdbip'];
$hqarr['hqip'] = $_POST['hqip'];
$hqarr['hqlistenport'] = $_POST['hqlistenport'];
$hqarr['hqdbname']=$_POST['hqdbname'];


//��������
$secondsrv = array();
$secondsrv["ip"] = $_POST['secondip'];
$secondsrv['secondport'] = $_POST['secondport'];
//�Զ���������ݿ����
$dbip = getDBCfg("appdb","dbip");//'192.168.30.153';
$dbname = getDBCfg("appdb","dbname");//'build';
$dbpasswd = getDBCfg("appdb","dbpswd");//'mysql';
$dbport = getDBCfg("appdb","dbport");//3306;
$dbuserame =getDBCfg("appdb","dbusername");//'root';
$sqlhander = new mysqlMGR($dbuserame,$dbpasswd,$dbport,$dbip,$dbname);
$rabtid=$sqlhander->insertdb('rabbitmq',$rabbitmq);
$lnxid=$sqlhander->insertdb('lnx',$lnxarr);
$tasid=$sqlhander->insertdb('tas',$tasarr);
$bankid=$sqlhander->insertdb('bank',$bankarr);
$hqid=$sqlhander->insertdb('hq',$hqarr);
$secondid=$sqlhander->insertdb('second',$secondsrv);
$relarr = array("rabitid"=>$rabtid,"lnxid"=>$lnxid,"tasid"=>$tasid,"bankid"=>$bankid,"hqid"=>$hqid,"secondid"=>$secondid);
$sqlhander->insertdb('rel',$relarr);

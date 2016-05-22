<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/25
 * Time: 16:17
 */
header("Content-type:text/html;charset=utf-8");
session_start();
include '../include/mysqlMGR.php';
//$mm = new xmlMDF();
//$mm->modify('./config.xml',"//Services[@Name='DB']//DBType",'value','angustang');
$cfgpath = $_SERVER['DOCUMENT_ROOT']."/tasintall/config/config.ini";
$cfgvalue = parse_ini_file($cfgpath,true);
$sid = session_id();
$shfile = date('Ymdhis')."tas.sh";
$product = $_POST['product'];
$revision = $_POST['revision'];
//rabbit����
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
$dbip = $cfgvalue["builddb"]["dbip"];//'192.168.30.153';
$dbname = $cfgvalue["builddb"]["dbname"];//'build';
$dbpasswd = $cfgvalue["builddb"]["dbpswd"];//'mysql';
$dbport = $cfgvalue["builddb"]["dbport"];//3306;
$dbuserame =$cfgvalue["builddb"]["dbusername"];//'root';
$allconfig = array();
$gfile = new getFileURL();
//�����յ�����ݲ��뵽��ݿ�
$sqlhander = new mysqlMGR($cfgvalue["appdb"]["dbusername"],$cfgvalue["appdb"]["dbpswd"],$cfgvalue["appdb"]["dbport"],$cfgvalue["appdb"]["dbip"],$cfgvalue["appdb"]["dbname"]);
$rabtid=$sqlhander->insertdb('rabbitmq',$rabbitmq);
$lnxid=$sqlhander->insertdb('lnx',$lnxarr);
$tasid=$sqlhander->insertdb('tas',$tasarr);
$bankid=$sqlhander->insertdb('bank',$bankarr);
$hqid=$sqlhander->insertdb('hq',$hqarr);
$secondid=$sqlhander->insertdb('second',$secondsrv);
$relarr = array("rabitid"=>$rabtid,"lnxid"=>$lnxid,"tasid"=>$tasid,"bankid"=>$bankid,"hqid"=>$hqid,"secondid"=>$secondid);
$sqlhander->insertdb('rel',$relarr);


#$sql = 'select c.url ,c.parent from product as a,revision as b ,item as c where c.pid = a.id and c.rid = b.id and c.pid =2 and c.rid = 161 and c.isleaf !=0;';
$sql = "SELECT c.url, c.parent FROM product AS a, revision AS b, item AS c WHERE c.pid = a.id AND c.rid = b.id AND c.pid = ( SELECT id FROM product WHERE `name` = '{$product}' ) AND c.rid = ( SELECT id FROM revision WHERE `revision` = '{$revision}' AND pid = ( SELECT id FROM product WHERE `name` = '{$product}' ) and `status` =1) AND c.isleaf != 0;";
$fileurl = $gfile->getURL($sql,$dbuserame,$dbpasswd,$dbname,$dbip);

$shell  = new creatshell($rabbitmq,$lnxarr,$bankarr,$tasarr,$fileurl,$hqarr,$secondsrv);
$resultzip = $shell->shell($shfile);
$shPath = $_SERVER["DOCUMENT_ROOT"]."/tasintall/bin/".$shfile;
exec("/bin/bash {$shPath}");
$srvip = gethostbyname($_SERVER['SERVER_NAME']);
$sucessdata = array();
$sucessdata['zipfile']=$resultzip;
$sucessdata['srvip'] = $srvip;
echo json_encode($sucessdata);
session_destroy();

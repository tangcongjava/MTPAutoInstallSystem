<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/25
 * Time: 16:17
 * 获取到参数配置然后进行安装
 */
header("Content-type:text/html;charset=utf-8");
session_start();
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

$mysqli->close();
$cfgpath = $_SERVER['DOCUMENT_ROOT']."/tasintall/config/config.ini";
$cfgvalue = parse_ini_file($cfgpath,true);
$sid = session_id();
$shfile = date('YmdHis').$sid."tas.sh";
$product = $_POST['product'];
$revision = $_POST['revision'];
//rabbit����
$rabbitmq = array();

$rabbitmq['rabbituri']=$data['rabbituri'];
//һ���������
$lnxarr = array();
$lnxarr['ip'] = $data['linuxip'];
//������ݿ����
//tas������ݿ����
$tasarr = array();
$tasarr['dbname'] =  $data['tasuser'];
$tasarr['dppswd'] = $data['taspassword'];
$tasarr['dpip']  =  $data['tasdbip'];
$tasarr['dpport'] =  $data['tasdbport'];
$tasarr['dbinstance'] = $data['tasdbinstance'];
//bank db value
$bankarr = array();
$bankarr['dbname'] = $data['bankuser'];
$bankarr['dppswd'] = $data['bankpswd'];
$bankarr['dpip']  = $tasarr['dpip'];
$bankarr['dpport'] = $tasarr['dpport'];
$bankarr['dbinstance'] = $tasarr['dbinstance'];
//�������
$hqarr = array();
$hqarr['hqdbuser']= $data['hqdbuser'];
$hqarr['hqdbpswd'] = $data['hqdbpswd'];
$hqarr['hqdbip'] = $data['hqdbip'];
$hqarr['hqip'] = $data['hqtoip'];
$hqarr['hqlistenport'] = $data['hqlistenport'];
$hqarr['hqdbname']= $data['hqdbname'];


//��������
$secondsrv = array();
$secondsrv["ip"] = $data['secondip'];
$secondsrv['secondport'] = $data['secondport'];
//�Զ���������ݿ����
$dbip = $cfgvalue["builddb"]["dbip"];//'192.168.30.153';
$dbname = $cfgvalue["builddb"]["dbname"];//'build';
$dbpasswd = $cfgvalue["builddb"]["dbpswd"];//'mysql';
$dbport = $cfgvalue["builddb"]["dbport"];//3306;
$dbuserame =$cfgvalue["builddb"]["dbusername"];//'root';
$allconfig = array();
$gfile = new getFileURL();
$productinfo = array();
$productinfo["mVersion"]=$product;
$productinfo["sVersion"]=$revision;
$lnxFileName = $productinfo["mVersion"].'_'.$productinfo["sVersion"].'_Linx_'.$lnxarr["ip"].'_'.date('Ymdhis').".zip";
$winFileName = $productinfo['mVersion'].'_'.$productinfo['sVersion'].'_win_'.$secondsrv["ip"].'_'.date('Ymdhis').".zip";
$productinfo['winfilename']=$winFileName;
$productinfo['lnxfilename']=$lnxFileName;
//�����յ�����ݲ��뵽��ݿ�
$sqlhander = new mysqlMGR($cfgvalue["appdb"]["dbusername"],$cfgvalue["appdb"]["dbpswd"],$cfgvalue["appdb"]["dbport"],$cfgvalue["appdb"]["dbip"],$cfgvalue["appdb"]["dbname"]);
$rabtid=$sqlhander->insertdb('rabbitmq',$rabbitmq);
$lnxid=$sqlhander->insertdb('lnx',$lnxarr);
$tasid=$sqlhander->insertdb('tas',$tasarr);
$bankid=$sqlhander->insertdb('bank',$bankarr);
$hqid=$sqlhander->insertdb('hq',$hqarr);
$secondid=$sqlhander->insertdb('second',$secondsrv);
$relarr = array("mainversion"=>$product,"subversion"=>$revision,"rabitid"=>$rabtid,"lnxid"=>$lnxid,"tasid"=>$tasid,"bankid"=>$bankid,"hqid"=>$hqid,"secondid"=>$secondid);
$relid = $sqlhander->insertdb('rel',$relarr);


#$sql = 'select c.url ,c.parent from product as a,revision as b ,item as c where c.pid = a.id and c.rid = b.id and c.pid =2 and c.rid = 161 and c.isleaf !=0;';
$sql = "SELECT c.url, c.parent FROM product AS a, revision AS b, item AS c WHERE c.pid = a.id AND c.rid = b.id AND c.pid = ( SELECT id FROM product WHERE `name` = '{$product}' ) AND c.rid = ( SELECT id FROM revision WHERE `revision` = '{$revision}' AND pid = ( SELECT id FROM product WHERE `name` = '{$product}' ) and `status` =1) AND c.isleaf != 0;";
$fileurl = $gfile->getURL($sql,$dbuserame,$dbpasswd,$dbname,$dbip);

$shell  = new creatshell($rabbitmq,$lnxarr,$bankarr,$tasarr,$fileurl,$hqarr,$secondsrv);
$shell->shell($shfile,$productinfo);
$shPath = $_SERVER["DOCUMENT_ROOT"]."/tasintall/bin/".$shfile;
exec("/bin/bash {$shPath}");
$srvip = gethostbyname($_SERVER['SERVER_NAME']);
$sucessdata = array();
$sucessdata['zipfile']=$resultzip;
$sucessdata['srvip'] = $srvip;
$fileURL = array();
$fileURL["win"]="http://".$srvip."/apphub/".$winFileName;
$fileURL['lnx']="http://".$srvip."/apphub/".$lnxFileName;
//将下载URL插入到数据库中
$sqlhander->insertURL($relid,$fileURL);
echo json_encode($sucessdata);
session_destroy();

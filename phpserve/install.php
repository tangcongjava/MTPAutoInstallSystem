<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/28
 * Time: 10:09
 */
//1.get value insert into db
//2.create the shell file
//3.throw the shell file to lnx and run it
//4.return

include_once("../include/mysqlMGR.php");
function getvalue($srvname){
    $rabbitarr = array();
    $lnxarr = array();
    $tasarr = array();
    $bankarr = array();
    $hqarr = array();
    $secondsrv = array();
    if($srvname=='rabbit') {
        $rabbitarr['username'] = $_POST['rabbitname'];
        $rabbitarr['pswd'] = $_POST['rabbitpassword'];
        $rabbitarr['ip'] = $_POST['rabbitip'];
        $rabbitarr['virtualname'] = $_POST['virtualpc'];
        $rabbitarr['port'] = $_POST['virtualport'];
        return $rabbitarr;
    }else if($srvname == 'lnx'){
        $lnxarr['username']=$_POST['lnxuser'];
        $lnxarr['pswd']=$_POST['lnxpswd'];
        $lnxarr['ip']=$_POST['lnxip'];
        $lnxarr['port']=$_POST['lnxport'];
        return $lnxarr;

    }else if($srvname =='tas'){
        $tasarr['dbname'] = $_POST['tasuser'];
        $tasarr['dppswd'] = $_POST['taspswd'];
        $tasarr['dpip'] = $_POST['tasip'];
        $tasarr['dpport'] = $_POST['tasport'];
        $tasarr['dbinstance'] = $_POST['tasinstance'];
        return $tasarr;

    }else if($srvname =='bank'){
        $bankarr['dbname'] = $_POST['bankuser'];
        $bankarr['dppswd'] = $_POST['bankpswd'];
        $bankarr['dpip'] = $_POST['bankip'];
        $bankarr['dpport'] = $_POST['bankport'];
        $bankarr['dbinstance'] =$_POST['bankinstance'];
        return $bankarr;
    }else if($srvname == 'hq'){

    }else if($srvname=='secondsrv'){

    }

}

$hander = new mysqlMGR("root",'5510806a',3306,'127.0.0.1','tas');
$hander->insertdb('rabbitmq',getvalue('rabbit'));
$hander->insertdb('tas',getvalue('tas'));
$hander->insertdb('lnx',getvalue('lnx'));
$hander->insertdb('bank',getvalue('bank'));




<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/25
 * Time: 16:01
 */
/*
 * $username:��ݿ��û���
 * $passwd:��ݿ����롣
 * $port:��ݶ˿ڡ�
 * $dpip :���ip.
 * $dbname:��ݿ���ơ�
 * function connect ������ݿ⡣
 * function selectvalue:����ݿ��в�ѯrabbimt,lnx,tas,bank�������Ϣ��
 * function insertdb():��rabbitmq,lnx,tas,bank�в��������Ϣ��
 * */
class mysqlMGR
{
    //����
    private   $username;
    private $passwd;
    private  $port;
    private  $dbip;
    private  $dbname;
    public  $errmsg;
//����
    public function __construct($username,$passwd,$port,$dbip,$dbname){
        $this->username = $username;
        $this->passwd = $passwd;
        $this->port = $port;
        $this->dbip = $dbip;
        $this->dbname = $dbname;
    }
    public  function  connect()
    {
        try {
            $link = new mysqli($this->dbip, $this->username, $this->passwd, $this->dbname, $this->port);
        }catch (Exception $e){
            printf("exception is hanpingi %s",$e->getMessage());
        }
        if(mysqli_connect_errno()){
            $this->errmsg="error code".mysqli_connect_errno().mysqli_connect_error();
            $this->link=null;
        }else{
            return $link;
        }

    }

    public  function selectvalue($srvname){
        $link =$this->connect();
        $sql="";
        if($srvname =='rabbitmq'){
           $sql = 'select uri from rabbit';
            $result = $link->query($sql);
        }else if($srvname =='lnx'){
            $sql = 'select lnxip from linuxserver';
            $result = $link->query($sql);

        }else if($srvname == 'tas'){
            $sql = 'select dbname,dppswd,dpip,dpport,dbinstance from tasdb';
            $result = $link->query($sql);
        }else if($srvname == 'bank') {
            $sql = 'select dbname,dppswd from bankdb';
            $result = $link->query($sql);

        }elseif($srvname == 'hq'){
           $sql='select * from hq';
            $result = $link->query($sql);
        }elseif($srvname=='secondsrv'){
            $sql="select * from secondSrv";
            $result=$link->query($sql);
        }elseif($srvname == "history"){
            $sql='SELECT e.id,e.mainversion,e.subversion,a.dbname AS bankuser, a.dppswd AS bankpswd, g.dbname as tasuser, g.dppswd as taspassword, g.dpport as tasdbport, g.dpip as tasdbip, g.dbinstance as tasdbinstance,  c.lnxip as linuxip, d.uri as rabbituri, f.ip as secondip, f.port  as seconport, b.hqdbip as hqdbip, b.hqdbname as hqdbname, b.hqdbusr as hqdbuser,b.hqdbpswd as hqdbpswd, b.hqip as hqtoip, b.hqport as hqlistenport  ,e.winzipurl as winzipurl ,e.lnxzipurl as lnxzipurl FROM bankdb AS a, hq AS b, linuxserver AS c, rabbit AS d, rel AS e, secondSrv AS f, tasdb AS g WHERE e.bankdbid = a.id AND e.hqid = b.id AND e.lnxid = c.id AND e.rabbitid = d.id AND e.secondid = f.id AND e.tasdbid = g.id';
            $result=$link->query($sql);
        }
        $link->close();
        return $result;
    }

    public  function insertdb($srvname,$valuearr){

        $link= $this->connect();
        if($srvname =='rabbitmq'){
            $updatesql =sprintf("insert into rabbit(uri) values('%s')",$valuearr['rabbituri']);
            $result = $link->query($updatesql);
            $insertid = $link->insert_id;
            if($result){
               // echo $result;
            }else{
                echo 'fail';
            }
            return $insertid;

        }else if($srvname == 'lnx'){
            $updatesql = sprintf("insert into linuxserver(lnxip) values('%s')",$valuearr['ip']);
            $result=  $link->query($updatesql);
            if($result){
                //echo $result;
            }else{
                echo 'fail';
            }
            $insertid = $link->insert_id;
            return $insertid;
        }else if($srvname == 'tas'){
            $updatesql=sprintf("insert into tasdb(dbname,dppswd,dpip,dpport,dbinstance) VALUES ('%s','%s','%s','%s','%s')",$valuearr['dbname'],$valuearr['dppswd'],$valuearr['dpip'],$valuearr['dpport'],$valuearr['dbinstance']);
            $result=  $link->query($updatesql);
            if($result){
                //echo $result;
            }else{
                echo 'fail';
            }
            $insertid = $link->insert_id;
            return $insertid;

        }else if($srvname == 'bank'){
            $updatesql=sprintf("insert into bankdb(dbname,dppswd, dpip, dpport, dbinstance) VALUES ('%s','%s','%s','%s','%s')",$valuearr['dbname'],$valuearr['dppswd'],$valuearr['dpip'],$valuearr['dpport'],$valuearr['dbinstance']);
            $result = $link->query($updatesql);
            if($result){
               // echo $result;
            }else{
                echo 'fail';
            }
            $insertid = $link->insert_id;
            return $insertid;

        }else if($srvname=='hq'){
            $updatesql=sprintf("insert into hq(hqdbip,hqdbpswd,hqdbusr,hqdbname,hqport,hqip) VALUES ('%s','%s','%s','%s','%s','%s')",$valuearr['hqdbip'],$valuearr['hqdbpswd'],$valuearr['hqdbuser'],$valuearr['hqdbname'],$valuearr['hqlistenport'],$valuearr['hqip']);
            $result=$link->query($updatesql);
            if($result){

            }else{
                echo 'insert into hq fail';
            }
            $insertid=$link->insert_id;
            return $insertid;

        }else if($srvname=='second'){
            $updatesql=sprintf("insert into secondSrv(ip,port) VALUES ('%s','%s')",$valuearr['ip'],$valuearr['secondport']);
            $result=$link->query($updatesql);
            if($result){

            }else{
                echo 'insert into hq fail';
            }
            $insertid=$link->insert_id;
            return $insertid;

        }else if($srvname=='rel'){
            $updatesql =sprintf("insert into rel(mainversion,subversion,bankdbid,hqid,lnxid,rabbitid,secondid,tasdbid) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')",$valuearr['mainversion'],$valuearr['subversion'],$valuearr['bankid'],$valuearr['hqid'],$valuearr['lnxid'],$valuearr['rabitid'],$valuearr['secondid'],$valuearr['tasid']);
            $result = $link->query($updatesql);
            if($result){

            }else{
                echo 'insert into rel fail';
            }
            $insertid = $link->insert_id;
            return $insertid;

        }


        $link->close();
    }
    function insertURL($id,$value){
        $link = $this->connect();
        $sql = sprintf("update rel set winzipurl='%s' , lnxzipurl='%s' where id =%d",$value["win"],$value['lnx'],$id);
        $result = $link->query($sql);
        if($result){

        }else{
            echo 'update rel faile';
        }
        $link->close();

    }
}

//����linux���нű�
/*
 * $rabbitarr:rabbitmq��������Ϣ��
 * $lnxarr: lnx��������Ϣ��
 * tasarr:tas��������Ϣ��
 * bankarr:bank��ݿ��������Ϣ��
 * filearr:���Զ���������ݿ��л�ȡ�������ļ����顣
 * shell():����lnux���нű�
 * */
class creatshell{
    public  $rabbituri;
    public  $lnxarr;
    public  $tasarr;
    public  $bankarr;
    public  $filearr;
    public  $hqarr;
    public  $secondarr;
    public  function __construct($rabbit,$lnxarr,$bankarr,$tasarr,$filearr,$hqarr,$secondarr){
           $this->rabbituri = $rabbit['rabbituri'];
           $this->lnxarr = $lnxarr;
            $this->tasarr = $tasarr;
            $this->bankarr = $bankarr;
            $this->filearr = $filearr;
        $this->hqarr = $hqarr;
        $this->secondarr = $secondarr;

    }
    //不要看这个参数，其实就是对象与对象之间的的消息作用
    function shell($filename,$productinfo){
        //还要接收一个版本号，lnxarr["ip"],secondarr["ip"],mainversion
        $winFileName=$productinfo['winfilename'];
        $lnxFileName=$productinfo['lnxfilename'];
        $fobj  = fopen($_SERVER["DOCUMENT_ROOT"]."/tasintall/bin/".$filename,'w+');
        $xmlphp = $_SERVER["DOCUMENT_ROOT"]."/tasintall/include/xmlmodify.php";
        $cfgphp = $_SERVER["DOCUMENT_ROOT"]."/tasintall/include/fixcfgfile.php";
        $iniphp = $_SERVER["DOCUMENT_ROOT"]."/tasintall/include/iniupdate.php";
        $rootdir = '/tmp/tasinstall'.date('YmdHis');
        $apphubdir = $_SERVER["DOCUMENT_ROOT"]."/apphub";

        if(!$fobj){
            $err = E_WARNING;
            echo $err;
        }
        fwrite($fobj,"#/usr/bin".PHP_EOL);
        //�����������������Ŀ¼
        fwrite($fobj,"exec 2>err.log".PHP_EOL);
        fwrite($fobj,"if [ -d $rootdir ]; then".PHP_EOL);
        fwrite($fobj,"\techo 'dir is exist'".PHP_EOL);
        fwrite($fobj,"else".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/linux".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/windows".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/PrimaryService".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/HistoryBuild".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/Quote".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/Report".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/SecondService".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/SQL".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/Client".PHP_EOL);
        fwrite($fobj,"mkdir -p $rootdir/BankSrv".PHP_EOL);

        fwrite($fobj,"fi".PHP_EOL);
        fwrite($fobj,"cd $rootdir/BankSrv".PHP_EOL);
        //download bankservers to the $rootdir/banksrv dir;
        if(array_key_exists('primary',$this->filearr)){
            //����һ���������,�����޸�
            $primary  = $this->filearr['primary'];
            foreach($primary as $value){
                if(preg_match('/bank_[0-9]/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1];
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //php -f filename.php arg1 arg2 arg3
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp  value {$this->bankarr['dpip']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort  value {$this->bankarr['dpport']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName  value {$this->bankarr['dbinstance']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd  value {$this->bankarr['dppswd']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser  value {$this->bankarr['dbname']} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);
                }elseif(preg_match('/bank_communicate/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);

                }elseif(preg_match('/bank_manage/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //php -f filename.php arg1 arg2 arg3
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank_manage\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp  value {$this->bankarr['dpip']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort  value {$this->bankarr['dpport']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName  value {$this->bankarr['dbinstance']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd  value {$this->bankarr['dppswd']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser  value {$this->bankarr['dbname']} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);
                }elseif(preg_match('/bank_outin/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //php -f filename.php arg1 arg2 arg3
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank_outin\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp  value {$this->bankarr['dpip']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort  value {$this->bankarr['dpport']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName  value {$this->bankarr['dbinstance']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd  value {$this->bankarr['dppswd']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser  value {$this->bankarr['dbname']} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/bank_query/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //php -f filename.php arg1 arg2 arg3
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank_query\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp  value {$this->bankarr['dpip']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort  value {$this->bankarr['dpport']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName  value {$this->bankarr['dbinstance']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd  value {$this->bankarr['dppswd']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser  value {$this->bankarr['dbname']} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);
                }elseif(preg_match('/bank_test/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //php -f filename.php arg1 arg2 arg3
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank_test\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/bank_task/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'bank_task\']//url  value {$this->rabbituri} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp  value {$this->bankarr['dpip']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort  value {$this->bankarr['dpport']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName  value {$this->bankarr['dbinstance']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd  value {$this->bankarr['dppswd']} ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser  value {$this->bankarr['dbname']} ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);

                }

            }
        }
        //���뵽����Ŀ¼�����ļ�����ѹ���޸������ļ�
        fwrite($fobj,"cd $rootdir/PrimaryService".PHP_EOL);
        if(array_key_exists('primary',$this->filearr)){
            //����һ���������,�����޸�
            $zipfilename = "";
            $primary  = $this->filearr['primary'];
            //循环遍历下载一级服务进行个修改
            foreach($primary as $value){
               if(preg_match("/server_busproxy/i",$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);

                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'busproxy\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //ListenPort value 10008  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_log_/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'log\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_login/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'user\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_manage/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'manager\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_match/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'marketmaker\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_money/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'money\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);


                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_newsfeed/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'news_feed\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_order/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'order\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_query/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'qkernel\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_realtime_monitor/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'realtime_monitor\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_report/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'report\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/server_settlement/i',$value)){
                    fwrite($fobj,"wget ".$value.PHP_EOL);
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                   $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                   $cfgfile = $rootdir."/PrimaryService/$dirname/location.cfg";
                   fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                   fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$cfgphp} {$cfgfile}".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'settle\']//url value {$this->rabbituri}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']}  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']}  ".PHP_EOL);
                    //������һ��Ŀ¼
                    fwrite($fobj,"cd ..".PHP_EOL);

                }
            }
        }
        fwrite($fobj,"cd $rootdir/HistoryBuild".PHP_EOL);
        if(array_key_exists('history',$this->filearr)){
            //������ʷ���������޸�
            $histroy  = $this->filearr['history'];
            $sqlconn = "server={$this->hqarr["hqdbip"]};user id={$this->hqarr['hqdbuser']};password={$this->hqarr['hqdbpswd']}; Initial Catalog";
            foreach($histroy as $value){
                fwrite($fobj,"wget ".$value.PHP_EOL);
                if(preg_match('/AppHost/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    fwrite($fobj,"php {$xmlphp} //connectionStrings//add[@name=\'SqlConnString1\'] connectionString \"$sqlconn\" 3  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //appSettings//add[@key=\'DatabaseName\'] value {$this->hqarr['hqdbname']} 3  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address {$this->hqarr['hqip']} 3 ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:{$this->hqarr["hqlistenport"]} 3 ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/SaveHost/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //connectionStrings//add[@name=\'SqlConnString1\'] connectionString \"$sqlconn\"  4  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //appSettings//add[@key=\'DatabaseName\'] value {$this->hqarr["hqdbname"]} 4  ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address {$this->hqarr['hqip']} 4 ".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 ".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);
                }
            }
        }
        fwrite($fobj,"cd $rootdir/Quote".PHP_EOL);
        if(array_key_exists('quote',$this->filearr)){
            //�������飬�޸�����
            $quote  = $this->filearr['quote'];
            foreach($quote as $value){
                fwrite($fobj,"wget ".$value.PHP_EOL);
                if(preg_match('/source/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    $inifile = "$rootdir/Quote/$dirname/Config.ini";
                    $xmlfile = "$rootdir/Quote/$dirname/Config.xml";
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    //�޸�����
                    //�޸�ini�ļ�
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Common' 'AutoRun' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Common' 'OutputPublicProctocol' '8'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Common' 'UpdateExchageFromDB' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Monitor' 'UseState' '3'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'IP' {$this->rabbituri}".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'Port' '13025'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'Mode' '9'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'SourceType' '42'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'ProtocolID' '8'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'IP' '192.168.31.29'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'Port' '6988'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'LoginInfoCount' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'Mode' '5'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'ClientID' '2'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'SourceType' '9'".PHP_EOL);

                    //�޸�xml����
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'quote\']//url value {$this->rabbituri} 5".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'DB\']//DBIp value {$this->tasarr['dpip']} 5".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'DB\']//DBPort value {$this->tasarr['dpport']} 5".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'DB\']//DBName value {$this->tasarr['dbinstance']} 5".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'DB\']//DBUser value {$this->tasarr['dbname']} 5".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp}  //Services[@Name=\'DB\']//DBPwd value {$this->tasarr['dppswd']} 5".PHP_EOL);

                    fwrite($fobj,"cd ..".PHP_EOL);

                }elseif(preg_match('/publish/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    $inifile = "$rootdir/Quote/$dirname/Config.ini";
                    //�޸�����
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Common' 'EnableAllWareQuote' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Common' 'UpdateExchageFromDB' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Monitor' 'UseState' '3'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'Monitor' 'Port' '6378'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'IP' '127.0.0.1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'Port' '13025'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'Mode' '4'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'OutputParam1' 'ProtocolID' '8'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'IP' {$this->rabbituri}".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'Mode' '5'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'ClientID' '1'".PHP_EOL);
                    fwrite($fobj,"php {$iniphp} {$inifile} 'InputParam1' 'ProtocolID' '0'".PHP_EOL);
                    fwrite($fobj,"cd ..".PHP_EOL);

                }
            }
        }

        fwrite($fobj,"cd $rootdir/SecondService".PHP_EOL);
        if(array_key_exists("second",$this->filearr)){
            //���ض������޸�����
            $second  = $this->filearr['second'];
            foreach($second as $value){
                fwrite($fobj,"wget ".$value.PHP_EOL);
                if(preg_match('/BusinessManager/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address {$this->lnxarr["ip"]} 1".PHP_EOL );
                    fwrite($fobj,"php {$xmlphp} //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1".PHP_EOL );
                    fwrite($fobj,"cd ..".PHP_EOL);

                }
            }
        }
        fwrite($fobj,"cd $rootdir/SQL".PHP_EOL);
        if(array_key_exists("sql",$this->filearr)){
            //�������ļ�
            $sql  = $this->filearr['sql'];
            foreach($sql as $value){
                fwrite($fobj,"wget ".$value.PHP_EOL);
            }
        }
        fwrite($fobj,"cd $rootdir/Client".PHP_EOL);
        if(array_key_exists("client",$this->filearr))
        {
            $client = $this->filearr['client'];
            foreach($client as $value){
                fwrite($fobj,"wget ".$value.PHP_EOL);
                if(preg_match('/ClientTerminal/',$value)){
                    $sub = explode("/",$value);
                    $zipname =$sub[count(explode("/",$value))-1] ;
                    $dirname = substr($zipname,0,strlen($zipname)-4);//获取文件名
                    fwrite($fobj,"unzip -d $dirname $zipname".PHP_EOL);
                    fwrite($fobj,"cd ./$dirname".PHP_EOL);
                    fwrite($fobj,"php {$xmlphp} //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'{$this->hqarr["hqip"]}:{$this->hqarr["hqlistenport"]}'$'0 2".PHP_EOL );
                    fwrite($fobj,"php {$xmlphp} //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'{$this->secondarr['ip']}:{$this->secondarr['secondport']}'$'0 2 ".PHP_EOL );
                    fwrite($fobj,"cd ..".PHP_EOL);

                }


            }
        }
        //ɾ��Դzip�ļ�,ѹ����Ŀ¼�ļ�
        fwrite($fobj,"cd $rootdir".PHP_EOL);
        fwrite($fobj,"find . -name *.zip -exec rm -rf {} \;".PHP_EOL);
        //分windows,linux进行打包
        fwrite($fobj,"mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows".PHP_EOL);
        fwrite($fobj,"mv PrimaryService/ linux".PHP_EOL);
        fwrite($fobj,"zip -r $winFileName windows".PHP_EOL);
        fwrite($fobj,"zip -r $lnxFileName linux".PHP_EOL);
        //fwrite($fobj,"zip -r $rootdir.zip $rootdir".PHP_EOL);
        fwrite($fobj,"cp $winFileName $apphubdir".PHP_EOL);
        fwrite($fobj,"cp $lnxFileName $apphubdir".PHP_EOL);
        fwrite($fobj,"rm -rf $winFileName $lnxFileName $rootdir".PHP_EOL);

        fclose($fobj);

        return ;

    }
    //��shell�ļ��ӵ�lnx��ִ��
    public  function  throwshelltolnx($ip,$port,$usr,$pswd){

    }
}


class getFileURL {
    function  connect($usrname,$usrpswd,$dbname,$dbip){
        $mysqli = new mysqli($dbip,$usrname,$usrpswd,$dbname);
        return $mysqli;
    }
    function  getURL($sql,$usrname,$usrpswd,$dbname,$dbip){
        $fileURL=array();
       $mysqli = new mysqli($dbip,$usrname,$usrpswd,$dbname) ;
        if(mysqli_connect_errno()){
            echo 'connect wrong';
        }
        $res = $mysqli->query($sql);
        while($row = $res->fetch_assoc()){
            //printf("%s,%n",$row['url'],$row['parent']);
            $row['url'] =str_replace("\\\\192.168.30.153\\share","ftp://test:test@192.168.20.197",$row['url']);
            $row['url'] =str_replace("\\",'/',$row['url']);
            if($row['parent']=='PrimaryService'){
                $fileURL['primary'][] =$row['url'];

            }else if($row['parent']=='HistoryBuild'){
                $fileURL['history'][] =$row['url'];

            }else if($row['parent'] =='Quote'){
                $fileURL['quote'][] =$row['url'];

            }else if($row['parent'] =='Client'){
                $fileURL['client'][] =$row['url'];

            }else if($row['parent'] == 'SecondService'){
                $fileURL['second'][] =$row['url'];

            }else if($row['parent'] =='SQL'){
                $fileURL['sql'][] = $row['url'];

            }
        }
        $mysqli->close();
        return $fileURL;
    }
}


class xmlMDF{
    function  modify($xpath,$attr,$value){
        $dom = new DOMDocument('utf-8');
        $dom->load("config.xml");
        $xpathobj = new DOMXPath($dom);
        $items =$xpathobj->query($xpath);
        $items->item(0)->setAttribute($attr,$value);
        $dom->save("config.xml");
    }

}
<?php /**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/9/7
 * Time: 16:47
 */
$dbip = '192.168.30.153';
$dbname = 'build';
$dbpasswd = 'mysql';
$dbport = 3306;
$dbuserame ='root';
$myslqi  = new mysqli($dbip,$dbuserame,$dbpasswd,$dbname,$dbport);
$sql = "select * from product";
$res = $myslqi->query($sql);
$id = 1;
$mainversion = array();
if(mysqli_connect_errno()){
    echo 'connect wrong';
    exit;
}
while($row=$res->fetch_assoc()){
   $mainversion[] =array("id"=>$id,"text"=>$row['name'],"value"=>$row['name']);
    $id +=1;

}
echo json_encode($mainversion);
$myslqi->close();

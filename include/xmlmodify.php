<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/8/31
 * Time: 16:45
 */
function  modify(){
    global $argv;
    $xpath = $argv[1];
    $attr = $argv[2];
    $value = $argv[3];
    $type = $argv[4];
    echo $xpath;
    echo $attr;
    echo $value;
    echo $type;
    $dom = new DOMDocument('utf-8');
    if($type == 1){
        $res =  $dom->load("Tas.BusinessManager.ServiceHost.exe.config");
    }else if($type == 2){
        $res = $dom->load("Muchinfo.ClientTerminal.exe.config");

    }else if($type == 3){
        $res=$dom->load("app.config");
    }else if($type == 4){
        $res=$dom->load("Muchinfo.Quote.SaveServiceHost.exe.config");
    }else if($type == 5){
        $res = $dom->load("Config.xml");
    }else{
        $res =  $dom->load("config.xml");
    }
    if($res){
        echo 'load ok';
    }
    $xpathobj = new DOMXPath($dom);

    $items =$xpathobj->query($xpath);
    if($items){
        echo "ok2\n\n";
    }
    $chkitem = $items->item(0);
    if($chkitem){
        print 'it is existe';
    }else{
        print 'there is no nodes';
    }
    $chkitem->setAttribute($attr,$value);
    if($type == 1){
       $dom->save("Tas.BusinessManager.ServiceHost.exe.config");
    }else if(2==$type){
        $dom->save("Muchinfo.ClientTerminal.exe.config");

    }else if(3==$type){
        $dom->save("app.config");
    }else if(4 == $type){
        $dom->save("Muchinfo.Quote.SaveServiceHost.exe.config");
    }else if(5== $type){
        $dom->save("Config.xml");
    }else {
        $dom->save("config.xml");
    }

}
modify();

<?php
/**
 * Created by PhpStorm.
 * User: angus
 * Date: 15-9-16
 * Time: 上午9:10
 */
function getDBCfg($session,$key){
    $cfgValue = parse_ini_file("../config/config.ini",true);
    $value = $cfgValue[$session][$key];
    return $value;
}
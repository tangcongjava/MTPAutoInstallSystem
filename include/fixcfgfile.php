<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/9/9
 * Time: 13:59
 */
$cfgfile = $argv[1];
function disableSma($cfgfile)
{
    $tmp = tempnam(sys_get_temp_dir(), basename($cfgfile));
    $tmphandle = fopen($tmp, "w");
    $handle = @fopen($cfgfile, "r");
    while (!feof($handle)) {
        $line = fgets($handle);
        if (preg_match('/^#/', $line) === 1) { // is section define
            continue;
        }elseif(preg_match('/enable/i',$line)==1){
            fwrite($tmphandle,"SmaEnable=0".PHP_EOL);
        }else{
            fwrite($tmphandle,$line);
        }

    }
    fclose($handle);

    fclose($tmphandle);
    unlink($cfgfile);
    copy($tmp, $cfgfile);
    unlink($tmp);
}
disableSma($cfgfile);

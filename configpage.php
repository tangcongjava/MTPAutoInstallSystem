<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>tas自动化部署系统</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="./jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="./jquery-easyui/themes/icon.css">
    <script src="./jquery-easyui/jquery.min.js"></script>
    <script src="./jquery-easyui/jquery.easyui.min.js"></script>
    <script>
        function iniPage(){
            $(function(){
                $.post('./include/init.php',{
                        "srvname":'rabbitmq'
                    },function(data){
                        //获取到数据然后填充文本输入框
                        $("#rabturi").textbox('setValue',data["uri"]);

                    },'json'
                );
                $.post('./include/init.php',{
                        "srvname":'lnx'
                    },function(data){
                        //获取到数据然后填充文本输入框
                        $("#lnxip").textbox('setValue',data["lnxip"]);

                    },'json'
                );
                $.post('./include/init.php',{
                        "srvname":'tas'
                    },function(data){
                        //获取到数据然后填充文本输入框
                        $("#tasuser").textbox('setValue',data["dbname"]);
                        $("#taspswd").textbox('setValue',data["dppswd"]);
                        $("#tasip").textbox('setValue',data["dpip"]);
                        $("#tasport").textbox('setValue',data["dpport"]);
                        $("#tasinstance").textbox('setValue',data["dbinstance"]);

                    },'json'
                );
                $.post('./include/init.php',{
                        "srvname":'bank'
                    },function(data){
                        //获取到数据然后填充文本输入框
                        $("#bankname").textbox('setValue',data["dbname"]);
                        $("#bankpswd").textbox('setValue',data["dppswd"]);

                    },'json'
                );
                $.post('./include/init.php',{ "srvname":'hq' },function(data){
                        //获取到数据然后填充文本输入框
                        $("#hqdbusr").textbox('setValue',data["hqdbusr"]);
                        $("#hqdbpswd").textbox('setValue',data["hqdbpswd"]);
                        $("#hqdbip").textbox('setValue',data["hqdbip"]);
                        $("#hqdbname").textbox('setValue',data["hqdbname"]);
                        $("#hqip").textbox('setValue',data["hqip"]);
                        $("#hqlistenport").textbox('setValue',data["hqport"]);

                    },'json'
                );
                $.post('./include/init.php',{ "srvname":'secondsrv' },function(data){
                        //获取到数据然后填充文本输入框
                        $("#secondip").textbox('setValue',data["ip"]);
                        $("#secondport").textbox('setValue',data["port"]);
                    },'json'
                );
            })
        }
            function arginiPage(arg){
                alert($("#rabturi").textbox('getValue'));
                $("#lnxip").textbox('setValue',arg.linuxip);
                 $("#tasuser").textbox('setValue',arg.tasuser);
                 $("#taspswd").textbox('setValue',arg.taspassword);
                 $("#tasip").textbox('setValue',arg.tasdbip);
                 $("#tasport").textbox('setValue',arg.tasdbport);
                 $("#tasinstance").textbox('setValue',tasdbinstance);
                 $("#bankname").textbox('setValue',arg.bankuser);
                 $("#bankpswd").textbox('setValue',arg.bankpswd);
                 $("#hqdbusr").textbox('setValue',arg.hqdbuser);
                 $("#hqdbpswd").textbox('setValue',arg.hqdbuser);
                 $("#hqdbip").textbox('setValue',arg.hqdbip);
                 $("#hqdbname").textbox('setValue',arg.hqdbname);
                 $("#hqip").textbox('setValue',arg.hqtoip);
                 $("#hqlistenport").textbox('setValue',arg.hqlistenport);
                 $("#secondip").textbox('setValue',arg.secondip);
                 $("#secondport").textbox('setValue',arg.secondport);

            }
    </script>
</head>
<body >
    <div id="header">
        <p><marquee>TAS自动化部署系统</marquee></p>
    </div>
    <main id="main">
        <div id="maindiv" class="easyui-panel" title="参数配置" >
        <form method="post" id="configform">
            <p style="font-size: 20px">请选择要进行部署的软件版本</p>
            主版本:<input id="mainversion" name = "product" class="easyui-combobox" data-options="
                url:'./include/getdata.php',
                onSelect:function(rec){
                    var url = './include/getsubversion.php?id='+rec.id;
                    $('#subversion').combobox('reload',url);
                },
                required:true
            "/>
            子版本:<input id="subversion"  name="revision" class="easyui-combobox" data-options="
            required:true">
            <table >
                <tr>
                    <td colspan="10" class="servename">rabbitmq配置</td>
                </tr>
                <tr>
                   <td >总线地址：</td>
                    <td><input type="text" id="rabturi" style="width: 300px" class="easyui-textbox" name="rabbituri" data-options="required:true" ></td>
                </tr>
                <tr>
                    <td colspan="10" class="servename">
                        一级服务器参数
                    </td>
                </tr>
                <tr>
                    <td>IP:</td>
                    <td><input type="text" id="lnxip" class="easyui-textbox" name="lnxip" data-options="required:true"></td>
                </tr>
                <tr>
                    <td colspan="10" class="servename">
                       TAS交易数据库参数
                    </td>
                </tr>
                <tr>
                    <td >TAS数据库用户名：</td>
                    <td><input type="text" id = "tasuser" class="easyui-textbox" name="tasuser" data-options="required:true" ></td>
                    <td >DB密码:</td>
                    <td><input type="text" id="taspswd" class="easyui-textbox" name="taspswd" data-options="required:true"></td>
                    <td>DBIP:</td>
                    <td><input type="text" id = "tasip" class="easyui-textbox" name="tasip" data-options="required:true"></td>
                    <td>DBport</td>
                    <td><input type="text" id="tasport" class="easyui-textbox" name="tasport" data-options="required:true"></td>
                    <td>DB实例</td>
                    <td><input type="text" id="tasinstance" class="easyui-textbox" name="tasinstance" data-options="required:true"></td>
                </tr>
                <tr>
                    <td colspan="10" class="servename">
                        BANK数据库参数 </td>
                </tr>
                <tr>
                    <td >BANK数据库用户名：</td>
                    <td><input type="text" id="bankname" class="easyui-textbox" name="bankuser" data-options="required:true"></td>
                    <td >DB密码:</td>
                    <td><input type="text" id="bankpswd" class="easyui-textbox" name="bankpswd" data-options="required:true"></td>
                </tr>
                <tr>
                    <td colspan="10" class="servename">
                       行情参数配置 </td>
                </tr>
                <tr>
                    <td >行情SQL数据库用户名：</td>
                    <td><input type="text" id="hqdbusr" class="easyui-textbox" name="hqdbuser" data-options="required:true"></td>
                    <td >行情DB密码:</td>
                    <td><input type="text" id="hqdbpswd" class="easyui-textbox" name="hqdbpswd" data-options="required:true"></td>
                    <td>行情DBIP:</td>
                    <td><input type="text" id="hqdbip" class="easyui-textbox" name="hqdbip" data-options="required:true"></td>
                    <td>行情数据库名:</td>
                    <td><input type="text" id="hqdbname" class="easyui-textbox" name="hqdbname" data-options="required:true"></td>
                    <td>行情服务所在IP:</td>
                    <td><input type="text" id="hqip" class="easyui-textbox" name="hqip" data-options="required:true"></td>
                    <td>行情双工监听端口</td>
                    <td><input type="text" id="hqlistenport" class="easyui-textbox" name="hqlistenport" data-options="required:true"></td>
                </tr>
                <tr>
                    <td colspan="10" class="servename">
                        二级代理服务配置 </td>
                </tr>
                <tr>
                    <td >二级服务所在ip：</td>
                    <td><input type="text" id="secondip" class="easyui-textbox" name="secondip" data-options="required:true"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td >二级监听端口:</td>
                    <td><input type="text" id="secondport" class="easyui-textbox" name="secondport" data-options="required:true"></td>
                </tr>
            </table>

        </form>
            <div id="waring" style="display: none">
                <P style="font-size: 4em;color:red">正在安装请不要关闭页面，大概10min...,请耐心等待！！</P>

            </div>
            <div id="result" >
                <p id="resvalue">结果在这里</p>

            </div>
            <div style="text-align: center;margin-top: 20px;">
                <a href="javascript:void(0)" class="easyui-linkbutton"  onclick="submitForm()" >提交</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
            </div>
        </div>
    <script>

        function showwarn(){
            $("#waring").fadeIn(5000);
        }

        function submitForm(){
            showwarn();
            $("#configform").form('submit',{
                url:'./phpserve/mysqlhander.php',
                success:function(data){
                    $("#waring").hide();
                    var data = eval('(' + data+')');
                    var srvip = data.srvip;
                    var zipfile = data.zipfile;
                    $("#result").fadeIn(3000);
                    $("#resvalue").html("请到"+srvip+"/apphub"+"下载"+zipfile+".zip");
                    $("#resvalue").css("font-size","3.5em");
                    $("#resvalue").css("color","yellow");
                }

            });
        }
        function go(){
            open("result.html");

        }
    </script>
    </main>
    <footer id="footer">
        &reg;copy-right2015-2015 power by<b> 测试平台组</b>
    </footer>
</body>
</html>
<?php
    if (isset($_GET['bankuser'])) {
        $arg= json_encode($_GET);
        echo "<script>arginiPage($arg)</script>";
    }
    else {
            // page not init
        echo "<script>iniPage()</script>";
        }


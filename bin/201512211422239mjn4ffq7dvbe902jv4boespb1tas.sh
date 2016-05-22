#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151221142223 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151221142223/linux
mkdir -p /tmp/tasinstall20151221142223/windows
mkdir -p /tmp/tasinstall20151221142223/PrimaryService
mkdir -p /tmp/tasinstall20151221142223/HistoryBuild
mkdir -p /tmp/tasinstall20151221142223/Quote
mkdir -p /tmp/tasinstall20151221142223/Report
mkdir -p /tmp/tasinstall20151221142223/SecondService
mkdir -p /tmp/tasinstall20151221142223/SQL
mkdir -p /tmp/tasinstall20151221142223/Client
mkdir -p /tmp/tasinstall20151221142223/BankSrv
fi
cd /tmp/tasinstall20151221142223/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.31_r18405_20150804112923.zip
unzip -d server_bank_6.6.0.31_r18405_20150804112923 server_bank_6.6.0.31_r18405_20150804112923.zip
cd ./server_bank_6.6.0.31_r18405_20150804112923
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.38_r19728_20150923031549.zip
unzip -d server_bank_communicate_6.6.0.38_r19728_20150923031549 server_bank_communicate_6.6.0.38_r19728_20150923031549.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.31_r18133_20150804021510.zip
unzip -d server_bank_manage_6.6.0.31_r18133_20150804021510 server_bank_manage_6.6.0.31_r18133_20150804021510.zip
cd ./server_bank_manage_6.6.0.31_r18133_20150804021510
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.31_r18347_20150804025356.zip
unzip -d server_bank_outin_6.6.0.31_r18347_20150804025356 server_bank_outin_6.6.0.31_r18347_20150804025356.zip
cd ./server_bank_outin_6.6.0.31_r18347_20150804025356
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.31_r18135_20150804024048.zip
unzip -d server_bank_query_6.6.0.31_r18135_20150804024048 server_bank_query_6.6.0.31_r18135_20150804024048.zip
cd ./server_bank_query_6.6.0.31_r18135_20150804024048
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.31_r18342_20150804020212.zip
unzip -d server_bank_task_6.6.0.31_r18342_20150804020212 server_bank_task_6.6.0.31_r18342_20150804020212.zip
cd ./server_bank_task_6.6.0.31_r18342_20150804020212
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
cd /tmp/tasinstall20151221142223/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_busproxy_6.3.0.24_r17169_20150619002440.zip
unzip -d server_busproxy_6.3.0.24_r17169_20150619002440 server_busproxy_6.3.0.24_r17169_20150619002440.zip
cd ./server_busproxy_6.3.0.24_r17169_20150619002440
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_busproxy_6.3.0.24_r17169_20150619002440/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_log_6.3.0.19_r15620_20150511233124.zip
unzip -d server_log_6.3.0.19_r15620_20150511233124 server_log_6.3.0.19_r15620_20150511233124.zip
cd ./server_log_6.3.0.19_r15620_20150511233124
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_log_6.3.0.19_r15620_20150511233124/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_login_6.3.0.24_r17200_20150619034449.zip
unzip -d server_login_6.3.0.24_r17200_20150619034449 server_login_6.3.0.24_r17200_20150619034449.zip
cd ./server_login_6.3.0.24_r17200_20150619034449
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_login_6.3.0.24_r17200_20150619034449/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_manage_6.3.0.23_r17008_20150608235932.zip
unzip -d server_manage_6.3.0.23_r17008_20150608235932 server_manage_6.3.0.23_r17008_20150608235932.zip
cd ./server_manage_6.3.0.23_r17008_20150608235932
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_manage_6.3.0.23_r17008_20150608235932/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_linux/server_match_6.2.0.29_r17880_20150720151257.zip
unzip -d server_match_6.2.0.29_r17880_20150720151257 server_match_6.2.0.29_r17880_20150720151257.zip
cd ./server_match_6.2.0.29_r17880_20150720151257
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_match_6.2.0.29_r17880_20150720151257/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_js_linux/server_money_6.3.0.45_r21415_20151109151749.zip
unzip -d server_money_6.3.0.45_r21415_20151109151749 server_money_6.3.0.45_r21415_20151109151749.zip
cd ./server_money_6.3.0.45_r21415_20151109151749
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_money_6.3.0.45_r21415_20151109151749/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_newsfeed_6.3.0.24_r17167_20150619004147.zip
unzip -d server_newsfeed_6.3.0.24_r17167_20150619004147 server_newsfeed_6.3.0.24_r17167_20150619004147.zip
cd ./server_newsfeed_6.3.0.24_r17167_20150619004147
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_newsfeed_6.3.0.24_r17167_20150619004147/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_linux/server_order_6.2.0.37_r18450_20150915044059.zip
unzip -d server_order_6.2.0.37_r18450_20150915044059 server_order_6.2.0.37_r18450_20150915044059.zip
cd ./server_order_6.2.0.37_r18450_20150915044059
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_order_6.2.0.37_r18450_20150915044059/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_query_6.3.0.28_r17771_20150715021620.zip
unzip -d server_query_6.3.0.28_r17771_20150715021620 server_query_6.3.0.28_r17771_20150715021620.zip
cd ./server_query_6.3.0.28_r17771_20150715021620
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_query_6.3.0.28_r17771_20150715021620/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_linux/server_realtime_monitor_6.2.0.19_r16040_20150512231429.zip
unzip -d server_realtime_monitor_6.2.0.19_r16040_20150512231429 server_realtime_monitor_6.2.0.19_r16040_20150512231429.zip
cd ./server_realtime_monitor_6.2.0.19_r16040_20150512231429
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_realtime_monitor_6.2.0.19_r16040_20150512231429/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_js_linux/server_report_6.3.0.45_r21584_20151113013705.zip
unzip -d server_report_6.3.0.45_r21584_20151113013705 server_report_6.3.0.45_r21584_20151113013705.zip
cd ./server_report_6.3.0.45_r21584_20151113013705
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_report_6.3.0.45_r21584_20151113013705/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange_linux/server_settlement_6.2.0.22_r16697_20150603014640.zip
unzip -d server_settlement_6.2.0.22_r16697_20150603014640 server_settlement_6.2.0.22_r16697_20150603014640.zip
cd ./server_settlement_6.2.0.22_r16697_20150603014640
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221142223/PrimaryService/server_settlement_6.2.0.22_r16697_20150603014640/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151221142223/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_AppHost_1.0.3.62_r32169_20150323210017.zip
unzip -d Muchinfo.Quote_AppHost_1.0.3.62_r32169_20150323210017 Muchinfo.Quote_AppHost_1.0.3.62_r32169_20150323210017.zip
cd ./Muchinfo.Quote_AppHost_1.0.3.62_r32169_20150323210017
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_SaveHost_1.0.3.62_r32169_20150323210017.zip
unzip -d Muchinfo.Quote_SaveHost_1.0.3.62_r32169_20150323210017 Muchinfo.Quote_SaveHost_1.0.3.62_r32169_20150323210017.zip
cd ./Muchinfo.Quote_SaveHost_1.0.3.62_r32169_20150323210017
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20151221142223/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.0.3_r32532_20150330152022.zip
unzip -d server_quote_publish_1.5.0.3_r32532_20150330152022 server_quote_publish_1.5.0.3_r32532_20150330152022.zip
cd ./server_quote_publish_1.5.0.3_r32532_20150330152022
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_publish_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022.zip
unzip -d server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022 server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022.zip
cd ./server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221142223/Quote/server_quote_source_marketmaker_1.5.0.3_r32532_20150330152022/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://test:test@192.168.30.173/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.25 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value gdtas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151221142223/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38530_20150803195511.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38530_20150803195511 Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38530_20150803195511.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38530_20150803195511
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.30.173 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151221142223/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_tas_r18031.zip
cd /tmp/tasinstall20151221142223/Client
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/TASManage52_qyexchange_6.2.1.33_r43209_20151113144410.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_QYDT_async_6.2.1.29_r41522_20151009085726.zip
unzip -d Muchinfo.ClientTerminal_QYDT_async_6.2.1.29_r41522_20151009085726 Muchinfo.ClientTerminal_QYDT_async_6.2.1.29_r41522_20151009085726.zip
cd ./Muchinfo.ClientTerminal_QYDT_async_6.2.1.29_r41522_20151009085726
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.25:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.25:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151221142223
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r TAS_qyexchange_R0002.010_win_192.168.31.25_20151221022223.zip windows
zip -r TAS_qyexchange_R0002.010_Linx_192.168.30.173_20151221022223.zip linux
cp TAS_qyexchange_R0002.010_win_192.168.31.25_20151221022223.zip /var/www/html/apphub
cp TAS_qyexchange_R0002.010_Linx_192.168.30.173_20151221022223.zip /var/www/html/apphub
rm -rf TAS_qyexchange_R0002.010_win_192.168.31.25_20151221022223.zip TAS_qyexchange_R0002.010_Linx_192.168.30.173_20151221022223.zip /tmp/tasinstall20151221142223

#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151221092953 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151221092953/linux
mkdir -p /tmp/tasinstall20151221092953/windows
mkdir -p /tmp/tasinstall20151221092953/PrimaryService
mkdir -p /tmp/tasinstall20151221092953/HistoryBuild
mkdir -p /tmp/tasinstall20151221092953/Quote
mkdir -p /tmp/tasinstall20151221092953/Report
mkdir -p /tmp/tasinstall20151221092953/SecondService
mkdir -p /tmp/tasinstall20151221092953/SQL
mkdir -p /tmp/tasinstall20151221092953/Client
mkdir -p /tmp/tasinstall20151221092953/BankSrv
fi
cd /tmp/tasinstall20151221092953/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_6.11.0.47_r22167_20151125144254.zip
unzip -d server_bank_6.11.0.47_r22167_20151125144254 server_bank_6.11.0.47_r22167_20151125144254.zip
cd ./server_bank_6.11.0.47_r22167_20151125144254
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_communicate_6.11.0.45_r21309_20151111051008.zip
unzip -d server_bank_communicate_6.11.0.45_r21309_20151111051008 server_bank_communicate_6.11.0.45_r21309_20151111051008.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_manage_6.11.0.45_r21311_20151111052528.zip
unzip -d server_bank_manage_6.11.0.45_r21311_20151111052528 server_bank_manage_6.11.0.45_r21311_20151111052528.zip
cd ./server_bank_manage_6.11.0.45_r21311_20151111052528
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_outin_6.11.0.45_r21313_20151111051500.zip
unzip -d server_bank_outin_6.11.0.45_r21313_20151111051500 server_bank_outin_6.11.0.45_r21313_20151111051500.zip
cd ./server_bank_outin_6.11.0.45_r21313_20151111051500
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_query_6.11.0.45_r21314_20151111053213.zip
unzip -d server_bank_query_6.11.0.45_r21314_20151111053213 server_bank_query_6.11.0.45_r21314_20151111053213.zip
cd ./server_bank_query_6.11.0.45_r21314_20151111053213
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3/server_bank_task_6.11.0.45_r21315_20151111054245.zip
unzip -d server_bank_task_6.11.0.45_r21315_20151111054245 server_bank_task_6.11.0.45_r21315_20151111054245.zip
cd ./server_bank_task_6.11.0.45_r21315_20151111054245
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
cd /tmp/tasinstall20151221092953/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_busproxy_6.11.0.50_r23043_20151215224539.zip
unzip -d server_busproxy_6.11.0.50_r23043_20151215224539 server_busproxy_6.11.0.50_r23043_20151215224539.zip
cd ./server_busproxy_6.11.0.50_r23043_20151215224539
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_busproxy_6.11.0.50_r23043_20151215224539/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_log_6.11.0.45_r21352_20151111001848.zip
unzip -d server_log_6.11.0.45_r21352_20151111001848 server_log_6.11.0.45_r21352_20151111001848.zip
cd ./server_log_6.11.0.45_r21352_20151111001848
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_log_6.11.0.45_r21352_20151111001848/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_login_6.11.0.45_r21353_20151111001435.zip
unzip -d server_login_6.11.0.45_r21353_20151111001435 server_login_6.11.0.45_r21353_20151111001435.zip
cd ./server_login_6.11.0.45_r21353_20151111001435
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_login_6.11.0.45_r21353_20151111001435/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_manage_6.11.0.50_r23369_20151217181148.zip
unzip -d server_manage_6.11.0.50_r23369_20151217181148 server_manage_6.11.0.50_r23369_20151217181148.zip
cd ./server_manage_6.11.0.50_r23369_20151217181148
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_manage_6.11.0.50_r23369_20151217181148/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_match_6.11.0.45_r21355_20151111002728.zip
unzip -d server_match_6.11.0.45_r21355_20151111002728 server_match_6.11.0.45_r21355_20151111002728.zip
cd ./server_match_6.11.0.45_r21355_20151111002728
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_match_6.11.0.45_r21355_20151111002728/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_money_6.11.0.50_r23193_20151216101629.zip
unzip -d server_money_6.11.0.50_r23193_20151216101629 server_money_6.11.0.50_r23193_20151216101629.zip
cd ./server_money_6.11.0.50_r23193_20151216101629
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_money_6.11.0.50_r23193_20151216101629/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_newsfeed_6.11.0.45_r21405_20151111001722.zip
unzip -d server_newsfeed_6.11.0.45_r21405_20151111001722 server_newsfeed_6.11.0.45_r21405_20151111001722.zip
cd ./server_newsfeed_6.11.0.45_r21405_20151111001722
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_newsfeed_6.11.0.45_r21405_20151111001722/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_order_6.11.0.49_r22711_20151209225010.zip
unzip -d server_order_6.11.0.49_r22711_20151209225010 server_order_6.11.0.49_r22711_20151209225010.zip
cd ./server_order_6.11.0.49_r22711_20151209225010
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_order_6.11.0.49_r22711_20151209225010/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_query_6.11.0.50_r23218_20151217181954.zip
unzip -d server_query_6.11.0.50_r23218_20151217181954 server_query_6.11.0.50_r23218_20151217181954.zip
cd ./server_query_6.11.0.50_r23218_20151217181954
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_query_6.11.0.50_r23218_20151217181954/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_realtime_monitor_6.11.0.50_r23043_20151216231829.zip
unzip -d server_realtime_monitor_6.11.0.50_r23043_20151216231829 server_realtime_monitor_6.11.0.50_r23043_20151216231829.zip
cd ./server_realtime_monitor_6.11.0.50_r23043_20151216231829
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_realtime_monitor_6.11.0.50_r23043_20151216231829/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_report_6.11.0.49_r22776_20151209231527.zip
unzip -d server_report_6.11.0.49_r22776_20151209231527 server_report_6.11.0.49_r22776_20151209231527.zip
cd ./server_report_6.11.0.49_r22776_20151209231527
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_report_6.11.0.49_r22776_20151209231527/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v3_linux/server_settlement_6.11.0.50_r23304_20151217152001.zip
unzip -d server_settlement_6.11.0.50_r23304_20151217152001 server_settlement_6.11.0.50_r23304_20151217152001.zip
cd ./server_settlement_6.11.0.50_r23304_20151217152001
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151221092953/PrimaryService/server_settlement_6.11.0.50_r23304_20151217152001/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151221092953/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=sa;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuotejack 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.62 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=sa;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuotejack 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.62 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20151221092953/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.3_r43566_20151121051010.zip
unzip -d server_quote_publish_1.5.1.3_r43566_20151121051010 server_quote_publish_1.5.1.3_r43566_20151121051010.zip
cd ./server_quote_publish_1.5.1.3_r43566_20151121051010
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'IP' amqp://angus:angus@192.168.31.61:5672/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010.zip
unzip -d server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010 server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010.zip
cd ./server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'IP' amqp://angus:angus@192.168.31.61:5672/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151221092953/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://angus:angus@192.168.31.61:5672/angus 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.180 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value tas_jf1217 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151221092953/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.5.0.6_r44308_20151209163731.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.5.0.6_r44308_20151209163731 Tas.BusinessManager.ServiceHost_async_6.5.0.6_r44308_20151209163731.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.5.0.6_r44308_20151209163731
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.31.61 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151221092953/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r21_03.zip
cd /tmp/tasinstall20151221092953/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jilin_6.3.7.39_r44744_20151217183034.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_v3_6.3.3.1_r44699_20151216210213.zip
unzip -d Muchinfo.ClientTerminal_v3_6.3.3.1_r44699_20151216210213 Muchinfo.ClientTerminal_v3_6.3.3.1_r44699_20151216210213.zip
cd ./Muchinfo.ClientTerminal_v3_6.3.3.1_r44699_20151216210213
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.62:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.62:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151221092953
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v3_R0001.010_win_192.168.31.62_20151221092953.zip windows
zip -r product_v3_R0001.010_Linx_192.168.31.61_20151221092953.zip linux
cp product_v3_R0001.010_win_192.168.31.62_20151221092953.zip /var/www/html/apphub
cp product_v3_R0001.010_Linx_192.168.31.61_20151221092953.zip /var/www/html/apphub
rm -rf product_v3_R0001.010_win_192.168.31.62_20151221092953.zip product_v3_R0001.010_Linx_192.168.31.61_20151221092953.zip /tmp/tasinstall20151221092953

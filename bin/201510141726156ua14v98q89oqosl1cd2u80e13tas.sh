#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151014172615 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151014172615/linux
mkdir -p /tmp/tasinstall20151014172615/windows
mkdir -p /tmp/tasinstall20151014172615/PrimaryService
mkdir -p /tmp/tasinstall20151014172615/HistoryBuild
mkdir -p /tmp/tasinstall20151014172615/Quote
mkdir -p /tmp/tasinstall20151014172615/Report
mkdir -p /tmp/tasinstall20151014172615/SecondService
mkdir -p /tmp/tasinstall20151014172615/SQL
mkdir -p /tmp/tasinstall20151014172615/Client
mkdir -p /tmp/tasinstall20151014172615/BankSrv
fi
cd /tmp/tasinstall20151014172615/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.38_r20001_20150924140636.zip
unzip -d server_bank_6.6.0.38_r20001_20150924140636 server_bank_6.6.0.38_r20001_20150924140636.zip
cd ./server_bank_6.6.0.38_r20001_20150924140636
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.37_r19728_20150918005332.zip
unzip -d server_bank_communicate_6.6.0.37_r19728_20150918005332 server_bank_communicate_6.6.0.37_r19728_20150918005332.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.37_r19730_20150918030140.zip
unzip -d server_bank_manage_6.6.0.37_r19730_20150918030140 server_bank_manage_6.6.0.37_r19730_20150918030140.zip
cd ./server_bank_manage_6.6.0.37_r19730_20150918030140
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.38_r20002_20150924140630.zip
unzip -d server_bank_outin_6.6.0.38_r20002_20150924140630 server_bank_outin_6.6.0.38_r20002_20150924140630.zip
cd ./server_bank_outin_6.6.0.38_r20002_20150924140630
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.37_r19733_20150918032240.zip
unzip -d server_bank_query_6.6.0.37_r19733_20150918032240 server_bank_query_6.6.0.37_r19733_20150918032240.zip
cd ./server_bank_query_6.6.0.37_r19733_20150918032240
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.39_r20104_20150929163736.zip
unzip -d server_bank_task_6.6.0.39_r20104_20150929163736 server_bank_task_6.6.0.39_r20104_20150929163736.zip
cd ./server_bank_task_6.6.0.39_r20104_20150929163736
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
cd /tmp/tasinstall20151014172615/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_busproxy_6.6.0.41_r20231_20151012095946.zip
unzip -d server_busproxy_6.6.0.41_r20231_20151012095946 server_busproxy_6.6.0.41_r20231_20151012095946.zip
cd ./server_busproxy_6.6.0.41_r20231_20151012095946
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_busproxy_6.6.0.41_r20231_20151012095946/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_log_6.6.0.41_r20189_20151012100951.zip
unzip -d server_log_6.6.0.41_r20189_20151012100951 server_log_6.6.0.41_r20189_20151012100951.zip
cd ./server_log_6.6.0.41_r20189_20151012100951
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_log_6.6.0.41_r20189_20151012100951/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_login_6.6.0.41_r20189_20151012003018.zip
unzip -d server_login_6.6.0.41_r20189_20151012003018 server_login_6.6.0.41_r20189_20151012003018.zip
cd ./server_login_6.6.0.41_r20189_20151012003018
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_login_6.6.0.41_r20189_20151012003018/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_manage_6.6.0.41_r20356_20151013151324.zip
unzip -d server_manage_6.6.0.41_r20356_20151013151324 server_manage_6.6.0.41_r20356_20151013151324.zip
cd ./server_manage_6.6.0.41_r20356_20151013151324
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_manage_6.6.0.41_r20356_20151013151324/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_match_6.6.0.41_r20301_20151012121415.zip
unzip -d server_match_6.6.0.41_r20301_20151012121415 server_match_6.6.0.41_r20301_20151012121415.zip
cd ./server_match_6.6.0.41_r20301_20151012121415
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_match_6.6.0.41_r20301_20151012121415/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_money_6.6.0.41_r20224_20151012101808.zip
unzip -d server_money_6.6.0.41_r20224_20151012101808 server_money_6.6.0.41_r20224_20151012101808.zip
cd ./server_money_6.6.0.41_r20224_20151012101808
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_money_6.6.0.41_r20224_20151012101808/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_newsfeed_6.6.0.41_r20246_20151012004030.zip
unzip -d server_newsfeed_6.6.0.41_r20246_20151012004030 server_newsfeed_6.6.0.41_r20246_20151012004030.zip
cd ./server_newsfeed_6.6.0.41_r20246_20151012004030
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_newsfeed_6.6.0.41_r20246_20151012004030/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_order_6.6.0.41_r20326_20151012155645.zip
unzip -d server_order_6.6.0.41_r20326_20151012155645 server_order_6.6.0.41_r20326_20151012155645.zip
cd ./server_order_6.6.0.41_r20326_20151012155645
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_order_6.6.0.41_r20326_20151012155645/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_query_6.6.0.41_r20287_20151012111253.zip
unzip -d server_query_6.6.0.41_r20287_20151012111253 server_query_6.6.0.41_r20287_20151012111253.zip
cd ./server_query_6.6.0.41_r20287_20151012111253
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_query_6.6.0.41_r20287_20151012111253/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_realtime_monitor_6.6.0.41_r20189_20151012083816.zip
unzip -d server_realtime_monitor_6.6.0.41_r20189_20151012083816 server_realtime_monitor_6.6.0.41_r20189_20151012083816.zip
cd ./server_realtime_monitor_6.6.0.41_r20189_20151012083816
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_realtime_monitor_6.6.0.41_r20189_20151012083816/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_report_6.6.0.41_r20289_20151012110126.zip
unzip -d server_report_6.6.0.41_r20289_20151012110126 server_report_6.6.0.41_r20289_20151012110126.zip
cd ./server_report_6.6.0.41_r20289_20151012110126
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_report_6.6.0.41_r20289_20151012110126/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_settlement_6.6.0.41_r20260_20151012071756.zip
unzip -d server_settlement_6.6.0.41_r20260_20151012071756 server_settlement_6.6.0.41_r20260_20151012071756.zip
cd ./server_settlement_6.6.0.41_r20260_20151012071756
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014172615/PrimaryService/server_settlement_6.6.0.41_r20260_20151012071756/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value mytas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151014172615/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20151014172615/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_publish_1.5.1.1_r40638_20150914170101 server_quote_publish_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_publish_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101 server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014172615/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://test:test@192.168.30.173/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.25 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value mytas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151014172615/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011 Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.30.173 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151014172615/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r19.zip
cd /tmp/tasinstall20151014172615/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jilin_6.3.6.36_r41744_20151012182038.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_trade_common_real_6.3.2.68_r41733_20151012160901.zip
unzip -d Muchinfo.ClientTerminal_trade_common_real_6.3.2.68_r41733_20151012160901 Muchinfo.ClientTerminal_trade_common_real_6.3.2.68_r41733_20151012160901.zip
cd ./Muchinfo.ClientTerminal_trade_common_real_6.3.2.68_r41733_20151012160901
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.25:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.25:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151014172615
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v2_R0003_win_192.168.31.25_20151014052615.zip windows
zip -r product_v2_R0003_Linx_192.168.30.173_20151014052615.zip linux
cp product_v2_R0003_win_192.168.31.25_20151014052615.zip /var/www/html/apphub
cp product_v2_R0003_Linx_192.168.30.173_20151014052615.zip /var/www/html/apphub
rm -rf product_v2_R0003_win_192.168.31.25_20151014052615.zip product_v2_R0003_Linx_192.168.30.173_20151014052615.zip /tmp/tasinstall20151014172615

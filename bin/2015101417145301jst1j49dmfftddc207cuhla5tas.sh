#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151014171453 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151014171453/linux
mkdir -p /tmp/tasinstall20151014171453/windows
mkdir -p /tmp/tasinstall20151014171453/PrimaryService
mkdir -p /tmp/tasinstall20151014171453/HistoryBuild
mkdir -p /tmp/tasinstall20151014171453/Quote
mkdir -p /tmp/tasinstall20151014171453/Report
mkdir -p /tmp/tasinstall20151014171453/SecondService
mkdir -p /tmp/tasinstall20151014171453/SQL
mkdir -p /tmp/tasinstall20151014171453/Client
mkdir -p /tmp/tasinstall20151014171453/BankSrv
fi
cd /tmp/tasinstall20151014171453/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.34_r19130_20150827104419.zip
unzip -d server_bank_6.6.0.34_r19130_20150827104419 server_bank_6.6.0.34_r19130_20150827104419.zip
cd ./server_bank_6.6.0.34_r19130_20150827104419
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.34_r19010_20150825004653.zip
unzip -d server_bank_communicate_6.6.0.34_r19010_20150825004653 server_bank_communicate_6.6.0.34_r19010_20150825004653.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.34_r18133_20150825012519.zip
unzip -d server_bank_manage_6.6.0.34_r18133_20150825012519 server_bank_manage_6.6.0.34_r18133_20150825012519.zip
cd ./server_bank_manage_6.6.0.34_r18133_20150825012519
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.34_r18710_20150825012910.zip
unzip -d server_bank_outin_6.6.0.34_r18710_20150825012910 server_bank_outin_6.6.0.34_r18710_20150825012910.zip
cd ./server_bank_outin_6.6.0.34_r18710_20150825012910
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.34_r18135_20150825014452.zip
unzip -d server_bank_query_6.6.0.34_r18135_20150825014452 server_bank_query_6.6.0.34_r18135_20150825014452.zip
cd ./server_bank_query_6.6.0.34_r18135_20150825014452
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.34_r19137_20150827150026.zip
unzip -d server_bank_task_6.6.0.34_r19137_20150827150026 server_bank_task_6.6.0.34_r19137_20150827150026.zip
cd ./server_bank_task_6.6.0.34_r19137_20150827150026
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
cd /tmp/tasinstall20151014171453/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_busproxy_6.6.0.34_r18762_20150827032646.zip
unzip -d server_busproxy_6.6.0.34_r18762_20150827032646 server_busproxy_6.6.0.34_r18762_20150827032646.zip
cd ./server_busproxy_6.6.0.34_r18762_20150827032646
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_busproxy_6.6.0.34_r18762_20150827032646/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_log_6.6.0.34_r19024_20150827104333.zip
unzip -d server_log_6.6.0.34_r19024_20150827104333 server_log_6.6.0.34_r19024_20150827104333.zip
cd ./server_log_6.6.0.34_r19024_20150827104333
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_log_6.6.0.34_r19024_20150827104333/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_login_6.6.0.34_r19024_20150827101025.zip
unzip -d server_login_6.6.0.34_r19024_20150827101025 server_login_6.6.0.34_r19024_20150827101025.zip
cd ./server_login_6.6.0.34_r19024_20150827101025
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_login_6.6.0.34_r19024_20150827101025/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_manage_6.6.0.36_r19516_20150909143501.zip
unzip -d server_manage_6.6.0.36_r19516_20150909143501 server_manage_6.6.0.36_r19516_20150909143501.zip
cd ./server_manage_6.6.0.36_r19516_20150909143501
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_manage_6.6.0.36_r19516_20150909143501/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_match_6.6.0.34_r19024_20150827074244.zip
unzip -d server_match_6.6.0.34_r19024_20150827074244 server_match_6.6.0.34_r19024_20150827074244.zip
cd ./server_match_6.6.0.34_r19024_20150827074244
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_match_6.6.0.34_r19024_20150827074244/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_money_6.6.0.36_r19522_20150909152056.zip
unzip -d server_money_6.6.0.36_r19522_20150909152056 server_money_6.6.0.36_r19522_20150909152056.zip
cd ./server_money_6.6.0.36_r19522_20150909152056
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_money_6.6.0.36_r19522_20150909152056/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_newsfeed_6.6.0.34_r19024_20150827033444.zip
unzip -d server_newsfeed_6.6.0.34_r19024_20150827033444 server_newsfeed_6.6.0.34_r19024_20150827033444.zip
cd ./server_newsfeed_6.6.0.34_r19024_20150827033444
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_newsfeed_6.6.0.34_r19024_20150827033444/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_order_6.6.0.41_r20326_20151012155645.zip
unzip -d server_order_6.6.0.41_r20326_20151012155645 server_order_6.6.0.41_r20326_20151012155645.zip
cd ./server_order_6.6.0.41_r20326_20151012155645
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_order_6.6.0.41_r20326_20151012155645/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_query_6.6.0.34_r19138_20150827155103.zip
unzip -d server_query_6.6.0.34_r19138_20150827155103 server_query_6.6.0.34_r19138_20150827155103.zip
cd ./server_query_6.6.0.34_r19138_20150827155103
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_query_6.6.0.34_r19138_20150827155103/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_realtime_monitor_6.6.0.34_r19024_20150827034340.zip
unzip -d server_realtime_monitor_6.6.0.34_r19024_20150827034340 server_realtime_monitor_6.6.0.34_r19024_20150827034340.zip
cd ./server_realtime_monitor_6.6.0.34_r19024_20150827034340
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_realtime_monitor_6.6.0.34_r19024_20150827034340/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_report_6.6.0.36_r19434_20150909112804.zip
unzip -d server_report_6.6.0.36_r19434_20150909112804 server_report_6.6.0.36_r19434_20150909112804.zip
cd ./server_report_6.6.0.36_r19434_20150909112804
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_report_6.6.0.36_r19434_20150909112804/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_settlement_6.6.0.34_r19140_20150827161900.zip
unzip -d server_settlement_6.6.0.34_r19140_20150827161900 server_settlement_6.6.0.34_r19140_20150827161900.zip
cd ./server_settlement_6.6.0.34_r19140_20150827161900
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151014171453/PrimaryService/server_settlement_6.6.0.34_r19140_20150827161900/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151014171453/HistoryBuild
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
cd /tmp/tasinstall20151014171453/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish__r37641_20150714222344.zip
unzip -d server_quote_publish__r37641_20150714222344 server_quote_publish__r37641_20150714222344.zip
cd ./server_quote_publish__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker__r37641_20150714222344.zip
unzip -d server_quote_source_marketmaker__r37641_20150714222344 server_quote_source_marketmaker__r37641_20150714222344.zip
cd ./server_quote_source_marketmaker__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151014171453/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://test:test@192.168.30.173/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.25 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value gdtas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151014171453/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454 Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.30.173 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151014171453/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r15.zip
cd /tmp/tasinstall20151014171453/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jiufeng_real_6.3.5.39_r40283_20150909140457.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_jiufeng_6.3.0.55_r41741_20151012170711.zip
unzip -d Muchinfo.ClientTerminal_jiufeng_6.3.0.55_r41741_20151012170711 Muchinfo.ClientTerminal_jiufeng_6.3.0.55_r41741_20151012170711.zip
cd ./Muchinfo.ClientTerminal_jiufeng_6.3.0.55_r41741_20151012170711
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.25:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.25:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151014171453
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v2_R0001.015_win_192.168.31.25_20151014051453.zip windows
zip -r product_v2_R0001.015_Linx_192.168.30.173_20151014051453.zip linux
cp product_v2_R0001.015_win_192.168.31.25_20151014051453.zip /var/www/html/apphub
cp product_v2_R0001.015_Linx_192.168.30.173_20151014051453.zip /var/www/html/apphub
rm -rf product_v2_R0001.015_win_192.168.31.25_20151014051453.zip product_v2_R0001.015_Linx_192.168.30.173_20151014051453.zip /tmp/tasinstall20151014171453

#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20150919180926 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20150919180926/linux
mkdir -p /tmp/tasinstall20150919180926/windows
mkdir -p /tmp/tasinstall20150919180926/PrimaryService
mkdir -p /tmp/tasinstall20150919180926/HistoryBuild
mkdir -p /tmp/tasinstall20150919180926/Quote
mkdir -p /tmp/tasinstall20150919180926/Report
mkdir -p /tmp/tasinstall20150919180926/SecondService
mkdir -p /tmp/tasinstall20150919180926/SQL
mkdir -p /tmp/tasinstall20150919180926/Client
mkdir -p /tmp/tasinstall20150919180926/BankSrv
fi
cd /tmp/tasinstall20150919180926/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_6.3.0.27_r17679_20150709220811.zip
unzip -d server_bank_6.3.0.27_r17679_20150709220811 server_bank_6.3.0.27_r17679_20150709220811.zip
cd ./server_bank_6.3.0.27_r17679_20150709220811
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://angus:angus@192.168.30.173/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_communicate_6.3.0.27_r17262_20150709213825.zip
unzip -d server_bank_communicate_6.3.0.27_r17262_20150709213825 server_bank_communicate_6.3.0.27_r17262_20150709213825.zip
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_manage_6.3.0.27_r17236_20150709214612.zip
unzip -d server_bank_manage_6.3.0.27_r17236_20150709214612 server_bank_manage_6.3.0.27_r17236_20150709214612.zip
cd ./server_bank_manage_6.3.0.27_r17236_20150709214612
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://angus:angus@192.168.30.173/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_outin_6.3.0.27_r17584_20150709230904.zip
unzip -d server_bank_outin_6.3.0.27_r17584_20150709230904 server_bank_outin_6.3.0.27_r17584_20150709230904.zip
cd ./server_bank_outin_6.3.0.27_r17584_20150709230904
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://angus:angus@192.168.30.173/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_query_6.3.0.27_r17023_20150709214445.zip
unzip -d server_bank_query_6.3.0.27_r17023_20150709214445 server_bank_query_6.3.0.27_r17023_20150709214445.zip
cd ./server_bank_query_6.3.0.27_r17023_20150709214445
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://angus:angus@192.168.30.173/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_task_6.3.0.27_r17595_20150709214224.zip
unzip -d server_bank_task_6.3.0.27_r17595_20150709214224 server_bank_task_6.3.0.27_r17595_20150709214224.zip
cd ./server_bank_task_6.3.0.27_r17595_20150709214224
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://angus:angus@192.168.30.173/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_test_6.3.0.27_r16531_20150709215006.zip
unzip -d server_bank_test_6.3.0.27_r16531_20150709215006 server_bank_test_6.3.0.27_r16531_20150709215006.zip
cd ./server_bank_test_6.3.0.27_r16531_20150709215006
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_test\']//url  value amqp://angus:angus@192.168.30.173/angus 
cd ..
cd /tmp/tasinstall20150919180926/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_busproxy_6.3.0.34_r18833_20150827014030.zip
unzip -d server_busproxy_6.3.0.34_r18833_20150827014030 server_busproxy_6.3.0.34_r18833_20150827014030.zip
cd ./server_busproxy_6.3.0.34_r18833_20150827014030
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_busproxy_6.3.0.34_r18833_20150827014030/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_log_6.3.0.27_r15620_20150710002713.zip
unzip -d server_log_6.3.0.27_r15620_20150710002713 server_log_6.3.0.27_r15620_20150710002713.zip
cd ./server_log_6.3.0.27_r15620_20150710002713
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_log_6.3.0.27_r15620_20150710002713/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_login_6.3.0.27_r17200_20150710003340.zip
unzip -d server_login_6.3.0.27_r17200_20150710003340 server_login_6.3.0.27_r17200_20150710003340.zip
cd ./server_login_6.3.0.27_r17200_20150710003340
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_login_6.3.0.27_r17200_20150710003340/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_manage_6.3.0.29_r17770_20150722010813.zip
unzip -d server_manage_6.3.0.29_r17770_20150722010813 server_manage_6.3.0.29_r17770_20150722010813.zip
cd ./server_manage_6.3.0.29_r17770_20150722010813
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_manage_6.3.0.29_r17770_20150722010813/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_match_6.3.0.32_r18644_20150814022929.zip
unzip -d server_match_6.3.0.32_r18644_20150814022929 server_match_6.3.0.32_r18644_20150814022929.zip
cd ./server_match_6.3.0.32_r18644_20150814022929
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_match_6.3.0.32_r18644_20150814022929/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_money_6.3.0.34_r19141_20150828120651.zip
unzip -d server_money_6.3.0.34_r19141_20150828120651 server_money_6.3.0.34_r19141_20150828120651.zip
cd ./server_money_6.3.0.34_r19141_20150828120651
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_money_6.3.0.34_r19141_20150828120651/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_newsfeed_6.3.0.34_r19112_20150827030048.zip
unzip -d server_newsfeed_6.3.0.34_r19112_20150827030048 server_newsfeed_6.3.0.34_r19112_20150827030048.zip
cd ./server_newsfeed_6.3.0.34_r19112_20150827030048
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_newsfeed_6.3.0.34_r19112_20150827030048/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_order_6.3.0.31_r18447_20150805115122.zip
unzip -d server_order_6.3.0.31_r18447_20150805115122 server_order_6.3.0.31_r18447_20150805115122.zip
cd ./server_order_6.3.0.31_r18447_20150805115122
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_order_6.3.0.31_r18447_20150805115122/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_query_6.3.0.34_r19135_20150827160429.zip
unzip -d server_query_6.3.0.34_r19135_20150827160429 server_query_6.3.0.34_r19135_20150827160429.zip
cd ./server_query_6.3.0.34_r19135_20150827160429
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_query_6.3.0.34_r19135_20150827160429/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_realtime_monitor_6.3.0.32_r18675_20150814144855.zip
unzip -d server_realtime_monitor_6.3.0.32_r18675_20150814144855 server_realtime_monitor_6.3.0.32_r18675_20150814144855.zip
cd ./server_realtime_monitor_6.3.0.32_r18675_20150814144855
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_realtime_monitor_6.3.0.32_r18675_20150814144855/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_report_6.3.0.34_r19166_20150828110753.zip
unzip -d server_report_6.3.0.34_r19166_20150828110753 server_report_6.3.0.34_r19166_20150828110753.zip
cd ./server_report_6.3.0.34_r19166_20150828110753
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_report_6.3.0.34_r19166_20150828110753/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_settlement_6.3.0.32_r18548_20150810090235.zip
unzip -d server_settlement_6.3.0.32_r18548_20150810090235 server_settlement_6.3.0.32_r18548_20150810090235.zip
cd ./server_settlement_6.3.0.32_r18548_20150810090235
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150919180926/PrimaryService/server_settlement_6.3.0.32_r18548_20150810090235/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://angus:angus@192.168.30.173/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20150919180926/HistoryBuild
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
cd /tmp/tasinstall20150919180926/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish__r37641_20150714222344.zip
unzip -d server_quote_publish__r37641_20150714222344 server_quote_publish__r37641_20150714222344.zip
cd ./server_quote_publish__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'IP' amqp://angus:angus@192.168.30.173/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker__r37641_20150714222344.zip
unzip -d server_quote_source_marketmaker__r37641_20150714222344 server_quote_source_marketmaker__r37641_20150714222344.zip
cd ./server_quote_source_marketmaker__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' amqp://angus:angus@192.168.30.173/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150919180926/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://angus:angus@192.168.30.173/angus 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.25 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value gdtas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20150919180926/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.28_r39571_20150825220701.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.28_r39571_20150825220701 Tas.BusinessManager.ServiceHost_async_6.4.0.28_r39571_20150825220701.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.28_r39571_20150825220701
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.30.173 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20150919180926/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r15.zip
cd /tmp/tasinstall20150919180926/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jilin_6.3.6.31_r39689_20150827190038.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_jiufeng_6.3.0.54_r39695_20150827200315.zip
unzip -d Muchinfo.ClientTerminal_jiufeng_6.3.0.54_r39695_20150827200315 Muchinfo.ClientTerminal_jiufeng_6.3.0.54_r39695_20150827200315.zip
cd ./Muchinfo.ClientTerminal_jiufeng_6.3.0.54_r39695_20150827200315
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.25:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.25:8887'$'0 2 
cd ..
cd /tmp/tasinstall20150919180926
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r  windows
zip -r  linux
cp  /var/www/html/apphub
cp  /var/www/html/apphub
rm -rf   /tmp/tasinstall20150919180926

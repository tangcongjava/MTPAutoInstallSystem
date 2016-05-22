#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151217163717 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151217163717/linux
mkdir -p /tmp/tasinstall20151217163717/windows
mkdir -p /tmp/tasinstall20151217163717/PrimaryService
mkdir -p /tmp/tasinstall20151217163717/HistoryBuild
mkdir -p /tmp/tasinstall20151217163717/Quote
mkdir -p /tmp/tasinstall20151217163717/Report
mkdir -p /tmp/tasinstall20151217163717/SecondService
mkdir -p /tmp/tasinstall20151217163717/SQL
mkdir -p /tmp/tasinstall20151217163717/Client
mkdir -p /tmp/tasinstall20151217163717/BankSrv
fi
cd /tmp/tasinstall20151217163717/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.47_r22150_20151126011848.zip
unzip -d server_bank_6.6.0.47_r22150_20151126011848 server_bank_6.6.0.47_r22150_20151126011848.zip
cd ./server_bank_6.6.0.47_r22150_20151126011848
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.47_r22142_20151126012038.zip
unzip -d server_bank_communicate_6.6.0.47_r22142_20151126012038 server_bank_communicate_6.6.0.47_r22142_20151126012038.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.47_r22118_20151126012439.zip
unzip -d server_bank_manage_6.6.0.47_r22118_20151126012439 server_bank_manage_6.6.0.47_r22118_20151126012439.zip
cd ./server_bank_manage_6.6.0.47_r22118_20151126012439
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.47_r22106_20151126012146.zip
unzip -d server_bank_outin_6.6.0.47_r22106_20151126012146 server_bank_outin_6.6.0.47_r22106_20151126012146.zip
cd ./server_bank_outin_6.6.0.47_r22106_20151126012146
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.47_r22119_20151126013613.zip
unzip -d server_bank_query_6.6.0.47_r22119_20151126013613 server_bank_query_6.6.0.47_r22119_20151126013613.zip
cd ./server_bank_query_6.6.0.47_r22119_20151126013613
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.47_r22179_20151126014601.zip
unzip -d server_bank_task_6.6.0.47_r22179_20151126014601 server_bank_task_6.6.0.47_r22179_20151126014601.zip
cd ./server_bank_task_6.6.0.47_r22179_20151126014601
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://angus:angus@192.168.31.61:5672/angus 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.180 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank_jf1217 
cd ..
cd /tmp/tasinstall20151217163717/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_busproxy_6.6.0.48_r22132_20151203223603.zip
unzip -d server_busproxy_6.6.0.48_r22132_20151203223603 server_busproxy_6.6.0.48_r22132_20151203223603.zip
cd ./server_busproxy_6.6.0.48_r22132_20151203223603
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_busproxy_6.6.0.48_r22132_20151203223603/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_log_6.6.0.45_r20422_20151108222758.zip
unzip -d server_log_6.6.0.45_r20422_20151108222758 server_log_6.6.0.45_r20422_20151108222758.zip
cd ./server_log_6.6.0.45_r20422_20151108222758
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_log_6.6.0.45_r20422_20151108222758/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_login_6.6.0.45_r20697_20151108230741.zip
unzip -d server_login_6.6.0.45_r20697_20151108230741 server_login_6.6.0.45_r20697_20151108230741.zip
cd ./server_login_6.6.0.45_r20697_20151108230741
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_login_6.6.0.45_r20697_20151108230741/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_manage_6.6.0.46_r21731_20151117003526.zip
unzip -d server_manage_6.6.0.46_r21731_20151117003526 server_manage_6.6.0.46_r21731_20151117003526.zip
cd ./server_manage_6.6.0.46_r21731_20151117003526
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_manage_6.6.0.46_r21731_20151117003526/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_match_6.6.0.45_r21326_20151108230552.zip
unzip -d server_match_6.6.0.45_r21326_20151108230552 server_match_6.6.0.45_r21326_20151108230552.zip
cd ./server_match_6.6.0.45_r21326_20151108230552
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_match_6.6.0.45_r21326_20151108230552/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_money_6.6.0.49_r22729_20151207222837.zip
unzip -d server_money_6.6.0.49_r22729_20151207222837 server_money_6.6.0.49_r22729_20151207222837.zip
cd ./server_money_6.6.0.49_r22729_20151207222837
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_money_6.6.0.49_r22729_20151207222837/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_newsfeed_6.6.0.45_r20966_20151108225702.zip
unzip -d server_newsfeed_6.6.0.45_r20966_20151108225702 server_newsfeed_6.6.0.45_r20966_20151108225702.zip
cd ./server_newsfeed_6.6.0.45_r20966_20151108225702
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_newsfeed_6.6.0.45_r20966_20151108225702/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_order_6.6.0.48_r22511_20151203142445.zip
unzip -d server_order_6.6.0.48_r22511_20151203142445 server_order_6.6.0.48_r22511_20151203142445.zip
cd ./server_order_6.6.0.48_r22511_20151203142445
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_order_6.6.0.48_r22511_20151203142445/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_query_6.6.0.48_r22292_20151204194508.zip
unzip -d server_query_6.6.0.48_r22292_20151204194508 server_query_6.6.0.48_r22292_20151204194508.zip
cd ./server_query_6.6.0.48_r22292_20151204194508
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_query_6.6.0.48_r22292_20151204194508/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_realtime_monitor_6.6.0.44_r20189_20151107230524.zip
unzip -d server_realtime_monitor_6.6.0.44_r20189_20151107230524 server_realtime_monitor_6.6.0.44_r20189_20151107230524.zip
cd ./server_realtime_monitor_6.6.0.44_r20189_20151107230524
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_realtime_monitor_6.6.0.44_r20189_20151107230524/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_report_6.6.0.48_r22660_20151204202540.zip
unzip -d server_report_6.6.0.48_r22660_20151204202540 server_report_6.6.0.48_r22660_20151204202540.zip
cd ./server_report_6.6.0.48_r22660_20151204202540
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_report_6.6.0.48_r22660_20151204202540/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_settlement_6.6.0.48_r22458_20151202172643.zip
unzip -d server_settlement_6.6.0.48_r22458_20151202172643 server_settlement_6.6.0.48_r22458_20151202172643.zip
cd ./server_settlement_6.6.0.48_r22458_20151202172643
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151217163717/PrimaryService/server_settlement_6.6.0.48_r22458_20151202172643/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://angus:angus@192.168.31.61:5672/angus  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.180  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas_jf1217  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151217163717/HistoryBuild
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
cd /tmp/tasinstall20151217163717/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.3_r43566_20151121051010.zip
unzip -d server_quote_publish_1.5.1.3_r43566_20151121051010 server_quote_publish_1.5.1.3_r43566_20151121051010.zip
cd ./server_quote_publish_1.5.1.3_r43566_20151121051010
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'IP' amqp://angus:angus@192.168.31.61:5672/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_publish_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010.zip
unzip -d server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010 server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010.zip
cd ./server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'IP' amqp://angus:angus@192.168.31.61:5672/angus
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151217163717/Quote/server_quote_source_marketmaker_1.5.1.3_r43566_20151121051010/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://angus:angus@192.168.31.61:5672/angus 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.180 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value tas_jf1217 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151217163717/SecondService
wget ftp://test:test@192.168.20.197/build/TAS/Tas.BusinessManager.ServiceHost_Notify_jf_6.5.0.2_r43210_20151113163827.zip
unzip -d Tas.BusinessManager.ServiceHost_Notify_jf_6.5.0.2_r43210_20151113163827 Tas.BusinessManager.ServiceHost_Notify_jf_6.5.0.2_r43210_20151113163827.zip
cd ./Tas.BusinessManager.ServiceHost_Notify_jf_6.5.0.2_r43210_20151113163827
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.31.61 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151217163717/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r21_01.zip
cd /tmp/tasinstall20151217163717/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_haixi_6.3.6.40_r44127_20151204191420.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_trade_common_real_6.3.2.78_r43741_20151126142548.zip
unzip -d Muchinfo.ClientTerminal_trade_common_real_6.3.2.78_r43741_20151126142548 Muchinfo.ClientTerminal_trade_common_real_6.3.2.78_r43741_20151126142548.zip
cd ./Muchinfo.ClientTerminal_trade_common_real_6.3.2.78_r43741_20151126142548
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.62:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.62:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151217163717
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v2_R0004.015_win_192.168.31.62_20151217043717.zip windows
zip -r product_v2_R0004.015_Linx_192.168.31.61_20151217043717.zip linux
cp product_v2_R0004.015_win_192.168.31.62_20151217043717.zip /var/www/html/apphub
cp product_v2_R0004.015_Linx_192.168.31.61_20151217043717.zip /var/www/html/apphub
rm -rf product_v2_R0004.015_win_192.168.31.62_20151217043717.zip product_v2_R0004.015_Linx_192.168.31.61_20151217043717.zip /tmp/tasinstall20151217163717

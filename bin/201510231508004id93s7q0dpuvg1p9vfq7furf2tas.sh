#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151023150806 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151023150806/linux
mkdir -p /tmp/tasinstall20151023150806/windows
mkdir -p /tmp/tasinstall20151023150806/PrimaryService
mkdir -p /tmp/tasinstall20151023150806/HistoryBuild
mkdir -p /tmp/tasinstall20151023150806/Quote
mkdir -p /tmp/tasinstall20151023150806/Report
mkdir -p /tmp/tasinstall20151023150806/SecondService
mkdir -p /tmp/tasinstall20151023150806/SQL
mkdir -p /tmp/tasinstall20151023150806/Client
mkdir -p /tmp/tasinstall20151023150806/BankSrv
fi
cd /tmp/tasinstall20151023150806/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_6.3.0.42_r20812_20151023020319.zip
unzip -d server_bank_6.3.0.42_r20812_20151023020319 server_bank_6.3.0.42_r20812_20151023020319.zip
cd ./server_bank_6.3.0.42_r20812_20151023020319
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_communicate_6.3.0.42_r19744_20151023014331.zip
unzip -d server_bank_communicate_6.3.0.42_r19744_20151023014331 server_bank_communicate_6.3.0.42_r19744_20151023014331.zip
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_manage_6.3.0.42_r19747_20151023002402.zip
unzip -d server_bank_manage_6.3.0.42_r19747_20151023002402 server_bank_manage_6.3.0.42_r19747_20151023002402.zip
cd ./server_bank_manage_6.3.0.42_r19747_20151023002402
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_outin_6.3.0.42_r20583_20151023001720.zip
unzip -d server_bank_outin_6.3.0.42_r20583_20151023001720 server_bank_outin_6.3.0.42_r20583_20151023001720.zip
cd ./server_bank_outin_6.3.0.42_r20583_20151023001720
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_query_6.3.0.42_r19764_20151023014043.zip
unzip -d server_bank_query_6.3.0.42_r19764_20151023014043 server_bank_query_6.3.0.42_r19764_20151023014043.zip
cd ./server_bank_query_6.3.0.42_r19764_20151023014043
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_task_6.3.0.42_r20814_20151022233513.zip
unzip -d server_bank_task_6.3.0.42_r20814_20151022233513 server_bank_task_6.3.0.42_r20814_20151022233513.zip
cd ./server_bank_task_6.3.0.42_r20814_20151022233513
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_test_6.3.0.42_r19753_20151023012707.zip
unzip -d server_bank_test_6.3.0.42_r19753_20151023012707 server_bank_test_6.3.0.42_r19753_20151023012707.zip
cd ./server_bank_test_6.3.0.42_r19753_20151023012707
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_test\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
cd ..
cd /tmp/tasinstall20151023150806/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_busproxy_6.3.0.42_r20277_20151020004841.zip
unzip -d server_busproxy_6.3.0.42_r20277_20151020004841 server_busproxy_6.3.0.42_r20277_20151020004841.zip
cd ./server_busproxy_6.3.0.42_r20277_20151020004841
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_busproxy_6.3.0.42_r20277_20151020004841/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_log_6.3.0.42_r19726_20151019235432.zip
unzip -d server_log_6.3.0.42_r19726_20151019235432 server_log_6.3.0.42_r19726_20151019235432.zip
cd ./server_log_6.3.0.42_r19726_20151019235432
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_log_6.3.0.42_r19726_20151019235432/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_login_6.3.0.42_r20441_20151019222531.zip
unzip -d server_login_6.3.0.42_r20441_20151019222531 server_login_6.3.0.42_r20441_20151019222531.zip
cd ./server_login_6.3.0.42_r20441_20151019222531
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_login_6.3.0.42_r20441_20151019222531/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_manage_6.3.0.42_r20694_20151020172919.zip
unzip -d server_manage_6.3.0.42_r20694_20151020172919 server_manage_6.3.0.42_r20694_20151020172919.zip
cd ./server_manage_6.3.0.42_r20694_20151020172919
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_manage_6.3.0.42_r20694_20151020172919/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_match_6.3.0.42_r20601_20151020024326.zip
unzip -d server_match_6.3.0.42_r20601_20151020024326 server_match_6.3.0.42_r20601_20151020024326.zip
cd ./server_match_6.3.0.42_r20601_20151020024326
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_match_6.3.0.42_r20601_20151020024326/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_money_6.3.0.42_r20427_20151020014612.zip
unzip -d server_money_6.3.0.42_r20427_20151020014612 server_money_6.3.0.42_r20427_20151020014612.zip
cd ./server_money_6.3.0.42_r20427_20151020014612
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_money_6.3.0.42_r20427_20151020014612/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_newsfeed_6.3.0.42_r19982_20151019225524.zip
unzip -d server_newsfeed_6.3.0.42_r19982_20151019225524 server_newsfeed_6.3.0.42_r19982_20151019225524.zip
cd ./server_newsfeed_6.3.0.42_r19982_20151019225524
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_newsfeed_6.3.0.42_r19982_20151019225524/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_order_6.3.0.39_r20013_20150928000901.zip
unzip -d server_order_6.3.0.39_r20013_20150928000901 server_order_6.3.0.39_r20013_20150928000901.zip
cd ./server_order_6.3.0.39_r20013_20150928000901
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_order_6.3.0.39_r20013_20150928000901/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_query_6.3.0.42_r20631_20151019235944.zip
unzip -d server_query_6.3.0.42_r20631_20151019235944 server_query_6.3.0.42_r20631_20151019235944.zip
cd ./server_query_6.3.0.42_r20631_20151019235944
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_query_6.3.0.42_r20631_20151019235944/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_realtime_monitor_6.3.0.42_r20111_20151020003524.zip
unzip -d server_realtime_monitor_6.3.0.42_r20111_20151020003524 server_realtime_monitor_6.3.0.42_r20111_20151020003524.zip
cd ./server_realtime_monitor_6.3.0.42_r20111_20151020003524
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_realtime_monitor_6.3.0.42_r20111_20151020003524/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_report_6.3.0.42_r20510_20151020003035.zip
unzip -d server_report_6.3.0.42_r20510_20151020003035 server_report_6.3.0.42_r20510_20151020003035.zip
cd ./server_report_6.3.0.42_r20510_20151020003035
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_report_6.3.0.42_r20510_20151020003035/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_settlement_6.3.0.42_r20560_20151019025905.zip
unzip -d server_settlement_6.3.0.42_r20560_20151019025905 server_settlement_6.3.0.42_r20560_20151019025905.zip
cd ./server_settlement_6.3.0.42_r20560_20151019025905
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151023150806/PrimaryService/server_settlement_6.3.0.42_r20560_20151019025905/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151023150806/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.23;user id=sa;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuote55 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.148 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.23;user id=sa;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuote55 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.148 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20151023150806/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_publish_1.5.1.1_r40638_20150914170101 server_quote_publish_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_publish_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' amqp://guest:guest@192.168.31.160:4570/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101 server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' amqp://guest:guest@192.168.31.160:4570/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151023150806/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://guest:guest@192.168.31.160:4570/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.160 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value tas166 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151023150806/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011 Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.38_r41514_20151008214011
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.31.160 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151023150806/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r20.zip
cd /tmp/tasinstall20151023150806/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jilin_6.3.6.36_r42089_20151020173417.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_trade_common_6.3.2.67_r41605_20151010085632.zip
unzip -d Muchinfo.ClientTerminal_trade_common_6.3.2.67_r41605_20151010085632 Muchinfo.ClientTerminal_trade_common_6.3.2.67_r41605_20151010085632.zip
cd ./Muchinfo.ClientTerminal_trade_common_6.3.2.67_r41605_20151010085632
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.148:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.148:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151023150806
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r TAS_main_R0015.002_win_192.168.31.148_20151023030800.zip windows
zip -r TAS_main_R0015.002_Linx_192.168.31.160_20151023030800.zip linux
cp TAS_main_R0015.002_win_192.168.31.148_20151023030800.zip /var/www/html/apphub
cp TAS_main_R0015.002_Linx_192.168.31.160_20151023030800.zip /var/www/html/apphub
rm -rf TAS_main_R0015.002_win_192.168.31.148_20151023030800.zip TAS_main_R0015.002_Linx_192.168.31.160_20151023030800.zip /tmp/tasinstall20151023150806

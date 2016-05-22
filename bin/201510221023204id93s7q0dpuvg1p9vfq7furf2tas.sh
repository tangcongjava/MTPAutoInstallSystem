#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151022102321 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151022102321/linux
mkdir -p /tmp/tasinstall20151022102321/windows
mkdir -p /tmp/tasinstall20151022102321/PrimaryService
mkdir -p /tmp/tasinstall20151022102321/HistoryBuild
mkdir -p /tmp/tasinstall20151022102321/Quote
mkdir -p /tmp/tasinstall20151022102321/Report
mkdir -p /tmp/tasinstall20151022102321/SecondService
mkdir -p /tmp/tasinstall20151022102321/SQL
mkdir -p /tmp/tasinstall20151022102321/Client
mkdir -p /tmp/tasinstall20151022102321/BankSrv
fi
cd /tmp/tasinstall20151022102321/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.38_r20001_20150924140636.zip
unzip -d server_bank_6.6.0.38_r20001_20150924140636 server_bank_6.6.0.38_r20001_20150924140636.zip
cd ./server_bank_6.6.0.38_r20001_20150924140636
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.37_r19728_20150918005332.zip
unzip -d server_bank_communicate_6.6.0.37_r19728_20150918005332 server_bank_communicate_6.6.0.37_r19728_20150918005332.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.37_r19730_20150918030140.zip
unzip -d server_bank_manage_6.6.0.37_r19730_20150918030140 server_bank_manage_6.6.0.37_r19730_20150918030140.zip
cd ./server_bank_manage_6.6.0.37_r19730_20150918030140
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.38_r20002_20150924140630.zip
unzip -d server_bank_outin_6.6.0.38_r20002_20150924140630 server_bank_outin_6.6.0.38_r20002_20150924140630.zip
cd ./server_bank_outin_6.6.0.38_r20002_20150924140630
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.37_r19733_20150918032240.zip
unzip -d server_bank_query_6.6.0.37_r19733_20150918032240 server_bank_query_6.6.0.37_r19733_20150918032240.zip
cd ./server_bank_query_6.6.0.37_r19733_20150918032240
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.39_r20104_20150929163736.zip
unzip -d server_bank_task_6.6.0.39_r20104_20150929163736 server_bank_task_6.6.0.39_r20104_20150929163736.zip
cd ./server_bank_task_6.6.0.39_r20104_20150929163736
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://guest:guest@192.168.31.160:4570/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank166 
cd ..
cd /tmp/tasinstall20151022102321/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_busproxy_6.6.0.34_r18762_20150827032646.zip
unzip -d server_busproxy_6.6.0.34_r18762_20150827032646 server_busproxy_6.6.0.34_r18762_20150827032646.zip
cd ./server_busproxy_6.6.0.34_r18762_20150827032646
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_busproxy_6.6.0.34_r18762_20150827032646/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_log_6.6.0.34_r19024_20150827104333.zip
unzip -d server_log_6.6.0.34_r19024_20150827104333 server_log_6.6.0.34_r19024_20150827104333.zip
cd ./server_log_6.6.0.34_r19024_20150827104333
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_log_6.6.0.34_r19024_20150827104333/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_login_6.6.0.34_r19024_20150827101025.zip
unzip -d server_login_6.6.0.34_r19024_20150827101025 server_login_6.6.0.34_r19024_20150827101025.zip
cd ./server_login_6.6.0.34_r19024_20150827101025
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_login_6.6.0.34_r19024_20150827101025/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_manage_6.6.0.37_r19516_20150915072205.zip
unzip -d server_manage_6.6.0.37_r19516_20150915072205 server_manage_6.6.0.37_r19516_20150915072205.zip
cd ./server_manage_6.6.0.37_r19516_20150915072205
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_manage_6.6.0.37_r19516_20150915072205/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_match_6.6.0.38_r20022_20150925113315.zip
unzip -d server_match_6.6.0.38_r20022_20150925113315 server_match_6.6.0.38_r20022_20150925113315.zip
cd ./server_match_6.6.0.38_r20022_20150925113315
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_match_6.6.0.38_r20022_20150925113315/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_money_6.6.0.37_r19893_20150918190745.zip
unzip -d server_money_6.6.0.37_r19893_20150918190745 server_money_6.6.0.37_r19893_20150918190745.zip
cd ./server_money_6.6.0.37_r19893_20150918190745
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_money_6.6.0.37_r19893_20150918190745/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_newsfeed_6.6.0.37_r19835_20150918060930.zip
unzip -d server_newsfeed_6.6.0.37_r19835_20150918060930 server_newsfeed_6.6.0.37_r19835_20150918060930.zip
cd ./server_newsfeed_6.6.0.37_r19835_20150918060930
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_newsfeed_6.6.0.37_r19835_20150918060930/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_order_6.6.0.34_r19024_20150827064012.zip
unzip -d server_order_6.6.0.34_r19024_20150827064012 server_order_6.6.0.34_r19024_20150827064012.zip
cd ./server_order_6.6.0.34_r19024_20150827064012
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_order_6.6.0.34_r19024_20150827064012/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_query_6.6.0.39_r20075_20150929121857.zip
unzip -d server_query_6.6.0.39_r20075_20150929121857 server_query_6.6.0.39_r20075_20150929121857.zip
cd ./server_query_6.6.0.39_r20075_20150929121857
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_query_6.6.0.39_r20075_20150929121857/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_realtime_monitor_6.6.0.34_r19024_20150827034340.zip
unzip -d server_realtime_monitor_6.6.0.34_r19024_20150827034340 server_realtime_monitor_6.6.0.34_r19024_20150827034340.zip
cd ./server_realtime_monitor_6.6.0.34_r19024_20150827034340
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_realtime_monitor_6.6.0.34_r19024_20150827034340/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_report_6.6.0.36_r19434_20150909112804.zip
unzip -d server_report_6.6.0.36_r19434_20150909112804 server_report_6.6.0.36_r19434_20150909112804.zip
cd ./server_report_6.6.0.36_r19434_20150909112804
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_report_6.6.0.36_r19434_20150909112804/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_settlement_6.6.0.42_r20638_20151020072559.zip
unzip -d server_settlement_6.6.0.42_r20638_20151020072559 server_settlement_6.6.0.42_r20638_20151020072559.zip
cd ./server_settlement_6.6.0.42_r20638_20151020072559
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151022102321/PrimaryService/server_settlement_6.6.0.42_r20638_20151020072559/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://guest:guest@192.168.31.160:4570/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas166  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151022102321/HistoryBuild
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
cd /tmp/tasinstall20151022102321/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_publish_1.5.1.1_r40638_20150914170101 server_quote_publish_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_publish_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' amqp://guest:guest@192.168.31.160:4570/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_publish_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
unzip -d server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101 server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101.zip
cd ./server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'IP' amqp://guest:guest@192.168.31.160:4570/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151022102321/Quote/server_quote_source_marketmaker_1.5.1.1_r40638_20150914170101/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://guest:guest@192.168.31.160:4570/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.160 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value tas166 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151022102321/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454 Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.31.160 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151022102321/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r15.zip
cd /tmp/tasinstall20151022102321/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jiufeng_real_6.3.5.51_r41280_20150925163510.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_trade_common_real_6.3.2.64_r41209_20150924151447.zip
unzip -d Muchinfo.ClientTerminal_trade_common_real_6.3.2.64_r41209_20150924151447 Muchinfo.ClientTerminal_trade_common_real_6.3.2.64_r41209_20150924151447.zip
cd ./Muchinfo.ClientTerminal_trade_common_real_6.3.2.64_r41209_20150924151447
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.148:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.148:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151022102321
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v2_R0002.004_win_192.168.31.148_20151022102320.zip windows
zip -r product_v2_R0002.004_Linx_192.168.31.160_20151022102320.zip linux
cp product_v2_R0002.004_win_192.168.31.148_20151022102320.zip /var/www/html/apphub
cp product_v2_R0002.004_Linx_192.168.31.160_20151022102320.zip /var/www/html/apphub
rm -rf product_v2_R0002.004_win_192.168.31.148_20151022102320.zip product_v2_R0002.004_Linx_192.168.31.160_20151022102320.zip /tmp/tasinstall20151022102321

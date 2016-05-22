#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20151202172715 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20151202172715/linux
mkdir -p /tmp/tasinstall20151202172715/windows
mkdir -p /tmp/tasinstall20151202172715/PrimaryService
mkdir -p /tmp/tasinstall20151202172715/HistoryBuild
mkdir -p /tmp/tasinstall20151202172715/Quote
mkdir -p /tmp/tasinstall20151202172715/Report
mkdir -p /tmp/tasinstall20151202172715/SecondService
mkdir -p /tmp/tasinstall20151202172715/SQL
mkdir -p /tmp/tasinstall20151202172715/Client
mkdir -p /tmp/tasinstall20151202172715/BankSrv
fi
cd /tmp/tasinstall20151202172715/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_6.6.0.32_r18709_20150814155244.zip
unzip -d server_bank_6.6.0.32_r18709_20150814155244 server_bank_6.6.0.32_r18709_20150814155244.zip
cd ./server_bank_6.6.0.32_r18709_20150814155244
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://guest:guest@192.168.31.160/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_communicate_6.6.0.32_r18131_20150814155247.zip
unzip -d server_bank_communicate_6.6.0.32_r18131_20150814155247 server_bank_communicate_6.6.0.32_r18131_20150814155247.zip
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_manage_6.6.0.32_r18133_20150814155248.zip
unzip -d server_bank_manage_6.6.0.32_r18133_20150814155248 server_bank_manage_6.6.0.32_r18133_20150814155248.zip
cd ./server_bank_manage_6.6.0.32_r18133_20150814155248
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://guest:guest@192.168.31.160/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_outin_6.6.0.32_r18710_20150814155250.zip
unzip -d server_bank_outin_6.6.0.32_r18710_20150814155250 server_bank_outin_6.6.0.32_r18710_20150814155250.zip
cd ./server_bank_outin_6.6.0.32_r18710_20150814155250
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://guest:guest@192.168.31.160/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_query_6.6.0.32_r18135_20150814155903.zip
unzip -d server_bank_query_6.6.0.32_r18135_20150814155903 server_bank_query_6.6.0.32_r18135_20150814155903.zip
cd ./server_bank_query_6.6.0.32_r18135_20150814155903
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://guest:guest@192.168.31.160/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2/server_bank_task_6.6.0.32_r18342_20150814160019.zip
unzip -d server_bank_task_6.6.0.32_r18342_20150814160019 server_bank_task_6.6.0.32_r18342_20150814160019.zip
cd ./server_bank_task_6.6.0.32_r18342_20150814160019
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://guest:guest@192.168.31.160/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.160 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
cd /tmp/tasinstall20151202172715/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_busproxy_6.6.0.32_r18507_20150815055714.zip
unzip -d server_busproxy_6.6.0.32_r18507_20150815055714 server_busproxy_6.6.0.32_r18507_20150815055714.zip
cd ./server_busproxy_6.6.0.32_r18507_20150815055714
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_busproxy_6.6.0.32_r18507_20150815055714/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_log_6.6.0.32_r18508_20150815111701.zip
unzip -d server_log_6.6.0.32_r18508_20150815111701 server_log_6.6.0.32_r18508_20150815111701.zip
cd ./server_log_6.6.0.32_r18508_20150815111701
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_log_6.6.0.32_r18508_20150815111701/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_login_6.6.0.32_r18509_20150815061226.zip
unzip -d server_login_6.6.0.32_r18509_20150815061226 server_login_6.6.0.32_r18509_20150815061226.zip
cd ./server_login_6.6.0.32_r18509_20150815061226
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_login_6.6.0.32_r18509_20150815061226/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_manage_6.6.0.32_r18510_20150815100447.zip
unzip -d server_manage_6.6.0.32_r18510_20150815100447 server_manage_6.6.0.32_r18510_20150815100447.zip
cd ./server_manage_6.6.0.32_r18510_20150815100447
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_manage_6.6.0.32_r18510_20150815100447/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_match_6.6.0.32_r18511_20150815060442.zip
unzip -d server_match_6.6.0.32_r18511_20150815060442 server_match_6.6.0.32_r18511_20150815060442.zip
cd ./server_match_6.6.0.32_r18511_20150815060442
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_match_6.6.0.32_r18511_20150815060442/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_money_6.6.0.32_r18512_20150815094045.zip
unzip -d server_money_6.6.0.32_r18512_20150815094045 server_money_6.6.0.32_r18512_20150815094045.zip
cd ./server_money_6.6.0.32_r18512_20150815094045
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_money_6.6.0.32_r18512_20150815094045/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_newsfeed_6.6.0.32_r18513_20150815111603.zip
unzip -d server_newsfeed_6.6.0.32_r18513_20150815111603 server_newsfeed_6.6.0.32_r18513_20150815111603.zip
cd ./server_newsfeed_6.6.0.32_r18513_20150815111603
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_newsfeed_6.6.0.32_r18513_20150815111603/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_order_6.6.0.32_r18514_20150815102038.zip
unzip -d server_order_6.6.0.32_r18514_20150815102038 server_order_6.6.0.32_r18514_20150815102038.zip
cd ./server_order_6.6.0.32_r18514_20150815102038
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_order_6.6.0.32_r18514_20150815102038/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_query_6.6.0.33_r18809_20150818111803.zip
unzip -d server_query_6.6.0.33_r18809_20150818111803 server_query_6.6.0.33_r18809_20150818111803.zip
cd ./server_query_6.6.0.33_r18809_20150818111803
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_query_6.6.0.33_r18809_20150818111803/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_realtime_monitor_6.6.0.32_r18516_20150815112446.zip
unzip -d server_realtime_monitor_6.6.0.32_r18516_20150815112446 server_realtime_monitor_6.6.0.32_r18516_20150815112446.zip
cd ./server_realtime_monitor_6.6.0.32_r18516_20150815112446
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_realtime_monitor_6.6.0.32_r18516_20150815112446/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_report_6.6.0.32_r18517_20150815102944.zip
unzip -d server_report_6.6.0.32_r18517_20150815102944 server_report_6.6.0.32_r18517_20150815102944.zip
cd ./server_report_6.6.0.32_r18517_20150815102944
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_report_6.6.0.32_r18517_20150815102944/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_product_v2_linux/server_settlement_6.6.0.32_r18549_20150815112740.zip
unzip -d server_settlement_6.6.0.32_r18549_20150815112740 server_settlement_6.6.0.32_r18549_20150815112740.zip
cd ./server_settlement_6.6.0.32_r18549_20150815112740
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20151202172715/PrimaryService/server_settlement_6.6.0.32_r18549_20150815112740/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://guest:guest@192.168.31.160/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.160  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value tas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20151202172715/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=sa;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuoteAngus 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.59 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=sa;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value HistoryQuoteAngus 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.59 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20151202172715/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish__r37641_20150714222344.zip
unzip -d server_quote_publish__r37641_20150714222344 server_quote_publish__r37641_20150714222344.zip
cd ./server_quote_publish__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'IP' amqp://guest:guest@192.168.31.160/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_publish__r37641_20150714222344/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker__r37641_20150714222344.zip
unzip -d server_quote_source_marketmaker__r37641_20150714222344 server_quote_source_marketmaker__r37641_20150714222344.zip
cd ./server_quote_source_marketmaker__r37641_20150714222344
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'IP' amqp://guest:guest@192.168.31.160/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20151202172715/Quote/server_quote_source_marketmaker__r37641_20150714222344/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://guest:guest@192.168.31.160/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.160 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value tas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20151202172715/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454 Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.26_r38326_20150730084454
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.31.160 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20151202172715/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r14.zip
cd /tmp/tasinstall20151202172715/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jiufeng_real_6.3.5.35_r39157_20150815212930.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_jiufeng_6.3.0.47_r38638_20150805155734.zip
unzip -d Muchinfo.ClientTerminal_jiufeng_6.3.0.47_r38638_20150805155734 Muchinfo.ClientTerminal_jiufeng_6.3.0.47_r38638_20150805155734.zip
cd ./Muchinfo.ClientTerminal_jiufeng_6.3.0.47_r38638_20150805155734
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.59:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.41:8887'$'0 2 
cd ..
cd /tmp/tasinstall20151202172715
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r product_v2_R0001_win_192.168.31.41_20151202052715.zip windows
zip -r product_v2_R0001_Linx_192.168.31.160_20151202052715.zip linux
cp product_v2_R0001_win_192.168.31.41_20151202052715.zip /var/www/html/apphub
cp product_v2_R0001_Linx_192.168.31.160_20151202052715.zip /var/www/html/apphub
rm -rf product_v2_R0001_win_192.168.31.41_20151202052715.zip product_v2_R0001_Linx_192.168.31.160_20151202052715.zip /tmp/tasinstall20151202172715

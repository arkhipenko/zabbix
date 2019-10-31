Zabbix template for APC UPS based on Back-UPS CS 500
====================================================

Based on reading and interpreting apcaccess output.                      


Because apcaccess takes anywhere from 1 to 15 seconds to run,
a file based cacheing was implemented:

One instance of apcaccess is executed and the outputs are used
for multiple monitoring variables, thus avoiding timeouts.

Tested on:
 - Zabbix 3.0
 - Ubuntu 18.04

INSTALL:
=======
1. Copy 'apc-status.pl' to '/usr/local/bin/' folder
2. Change permissions: 'chmod 755 /usr/local/bin/apc-status.pl'<br/>
   Add '/usr/local/bin/apc-status.pl &' to your '/etc/rc.local' script 
3. Copy 'userparameter_apcupsd.conf' to '/etc/zabbix/zabbix.d/' folder
4. Import 'Zabbix - Template APC upsapcd.xml' into your Zabbix instance
5. Reboot your server -or- execute 'nohup /usr/local/bin/apc-status.pl &>/dev/null &' command

Enjoy!


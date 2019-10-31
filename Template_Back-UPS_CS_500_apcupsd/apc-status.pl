#!/usr/bin/perl

$filename = "/var/spool/apcupsd/status";
$filenew = $filename.".update";
$host = "127.0.0.1"
$port = "3551";

$|=1; 

`mkdir /var/spool/apcupsd > /dev/null`;
while (1) {
    `/sbin/apcaccess -h $host:$port -u status > $filenew`;
    $rc = -s $filenew;
    if ($rc > 0) {
	`mv -f $filenew $filename`;
    }
    else {
	`rm -f $filenew`;
    }
    sleep(57);
}

# Lines, which start with "/", specify mounts, that are common for all users:
/var/lib/mysql
/dev/shm
/var/run/postgres
/dev/pts
/usr/local/apache/domlogs
/proc
/var/run/proxyexec/cagefs.sock
/opt
# You can add personal (individual) mounts for users, like below.
# Please, start line with "@" symbol, and then specify path and permissions (comma separated).
# These directories will be virtualized for each user.
@/var/spool/cron,700
@/var/run/screen,777
@/var/cache/php-eaccelerator,777
# Please add exclamation sign at the beginning of the line if you want to mount path read-only, like below.
!/lib
!/usr/lib
!/lib64
!/usr/lib64
!/usr/include
!/usr/share/locale
!/usr/share/terminfo
!/usr/share/zoneinfo
/opt/alt
#!/usr/local/lib/perl5
!/usr/local/lib/php
!/usr/local/cpanel/Cpanel
!/usr/local/cpanel/3rdparty/perl
!/usr/local/cpanel/3rdparty/lib
!/usr/local/cpanel/3rdparty/share
!/usr/local/cpanel/3rdparty/php
!/var/run/postgres/
!/usr/share/vim
/var/spool/at
%/var/cpanel/userdata
!/usr/local/cpanel/3rdparty/bin
!/var/lib/spamassassin
# next line is added by alt-mod-passenger
/var/passenger
!/var/run/postgres/

/usr/local/cpanel/whostmgr/docroot/cgi/softaculous

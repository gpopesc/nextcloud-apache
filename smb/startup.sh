#!bash/bin
sed -i "s|well-known\/carddav \/remote\.php\/dav\/ \[R=301\,L\]|well-known\/carddav https\:\/\/nc\.ubx\.ro\/remote\.php\/dav\/ \[R=301\,L\]|g" /volume1/nextcloud/.htaccess
sed -i "s|well-known\/caldav \/remote\.php\/dav\/ \[R=301\,L\]|well-known\/caldav https\:\/\/nc\.ubx\.ro\/remote\.php\/dav\/ \[R=301\,L\]|g" /volume1/nextcloud/.htaccess
sed -i 's|\^\$ \/remote\.php\/webdav\/ \[L\,R=302\]|\^\$ https\:\/\/nc\.ubx\.ro\/remote\.php\/webdav\/ \[L\,R=302\]|g' /volume1/nextcloud/.htaccess

sudo sed -i '/related headers/a  \ \ \ \Header always set Strict-Transport-Security "max-age=15552000; includeSubDomains"' /volume1/nextcloud/.htaccess

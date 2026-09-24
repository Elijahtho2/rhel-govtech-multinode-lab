# Day 17 Commands

'''bash

mkdir /webdata

echo "Custom Apache Webdata" > /webdata/index.html


vim /etc/httpd/conf.d/webdata.conf


semanage fcontext -a -t httpd_sys_content_t "/webdata(/.*)?"

restorecon -Rv /webdata


systemctl restart httpd

'''

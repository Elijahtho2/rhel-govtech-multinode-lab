# Day 17 - Apache Configuration

## Objective
Configure Apache to serve content from custom directory /webdata.

## Machine Used
gov-app

## Commands Practiced
- mkdir
- vim
- systemctl 
- semanage
- restorecon


## Broken State Introduced
Apache cannot serve content from /webdata


Symptoms:

- 403 Forbidden
- curl fails


## Configuration

Created directory:

mkdir /webdata


Created content:


echo "Custom Apache Webdata" > /webdata/index.html


Created config file:


vim /etc/httpd/conf.d/webdata.conf


Added:


DocumentRoot /webdata


<Directory /webdata>
    
    Require all granted

</Directory>


Applied SELinux context:


semanage fcontext -a -t httpd_sys_content_t "/webdata(/.*)?"

restorecon -Rv /webdata


Restarted Apache:


systemctl restart httpd


## Validation

curl http://gov-app


## Why It Works
Apache must have:
- correct config
- correct permissions
- correct SELinux context

## Outcome
Custom document root successfully configured.

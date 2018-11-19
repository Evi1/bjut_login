#!/bin/bash
echo 'Please enter your name':
read name
echo 'Please enter your password':
read pw
a=`curl -x '' 'https://lgn6.bjut.edu.cn/V6?https://lgn.bjut.edu.cn' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: http://lgn.bjut.edu.cn' -H 'Upgrade-Insecure-Requests: 1' -H 'DNT: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://lgn.bjut.edu.cn/' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en,en-US;q=0.9,zh-CN;q=0.8,zh;q=0.7,zh-TW;q=0.6' --data 'DDDDD='$name'&upass='$pw'&v46s=0&v6ip=&f4serip=172.30.201.2&0MKKey=' --compressed`
ipv6=`echo $a | grep -oP '([0-9a-f]*:){7}[0-9a-f]*'`
curl -x '' 'https://lgn.bjut.edu.cn/' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: https://lgn6.bjut.edu.cn' -H 'Upgrade-Insecure-Requests: 1' -H 'DNT: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: https://lgn6.bjut.edu.cn/V6?https://lgn.bjut.edu.cn' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en,en-US;q=0.9,zh;q=0.8,zh-CN;q=0.7,zh-TW;q=0.6' --data 'DDDDD='$name'&upass='$pw'&0MKKey=Login&v6ip='$ipv6 --compressed

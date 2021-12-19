#!/bin/bash
#cd /root/.conf.d/snap2html/DiogenesList-master/
#python /root/.conf.d/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/00/scraper index
sed -i "s#\[LINK ROOT\]#https://dxzorz.dxz.plus#g"  /root/.conf.d/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/.conf.d/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/.conf.d/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00alpha##g"  /root/.conf.d/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>所有内容均来自公开分享_收藏自用_侵权联系https://t.me/dxb22abad(telegram)#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>00盘_用法详见dxz.plus#g" /root/.conf.d/snap2html/DiogenesList-master/index.html
cp /root/.conf.d/snap2html/DiogenesList-master/index.html /root/.conf.d/snapGit/
cd /root/.conf.d/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push  https://github.com/dxb22abad/htmltest.git

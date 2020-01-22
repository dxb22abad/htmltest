
#!/bin/bash
cd /root/snap2html/DiogenesList-master/
python /root/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/00 index
sed -i "s#\[LINK ROOT\]#https://media.dxz.plus#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00##g"  /root/snap2html/DiogenesList-master/index.html
cp /root/snap2html/DiogenesList-master/index.html /root/snapGit/
cd /root/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push  https://github.com/dxb22abad/htmltest.git

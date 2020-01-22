#!/bin/bash
sed -i "s#\[LINK ROOT\]#https://media.dxz.plus#g"  /root/DiogenesList-master/htmltest/index_4K.html

sed -i "s#\[LINK PROTOCOL\]##g"  /root/DiogenesList-master/htmltest/index_4K.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/DiogenesList-master/htmltest/index_4K.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00##g"  /root/DiogenesList-master/htmltest/index_4K.html


cd /root/DiogenesList-master/htmltest/
git add .
git commit -m 'new'
git push  https://github.com/dxb22abad/htmltest.git

#!/bin/bash

echo 'Installing skopeo...'
sudo yum -y install skopeo
echo "skopeo install completed ($(skopeo --version))"

echo 'Installing s2i...'
mkdir /tmp/s2i/ && cd /tmp/s2i/ 
curl -s https://api.github.com/repos/openshift/source-to-image/releases/latest \
  | grep browser_download_url \
  | grep linux-amd64 \
  | cut -d '"' -f 4 \
  | wget -qi -

tar xvf source-to-image*.gz

sudo mv s2i /usr/local/bin
rm -rf /tmp/s2i/
echo "s2i install completed ($(s2i version))"

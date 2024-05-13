#!/bin/sh

# Install coursier
curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup -y
echo "export PATH=$PATH:~/.local/share/coursier/bin" >> ~/.bashrc
source ~/.bashrc
rm -rf cs
cs install scala:2.13.14 scalac:2.13.14
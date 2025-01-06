#!/bin/bash

pip3 install --break-system-packages shodan censys

# Install tools using Go
GO111MODULE=on go install -v github.com/owasp-amass/amass/v3/...@master
GO111MODULE=on go install github.com/tomnomnom/assetfinder@latest
GO111MODULE=on go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
GO111MODULE=on go install -v github.com/hakluke/haktrails@latest
GO111MODULE=on go install github.com/gwen001/github-subdomains@latest
GO111MODULE=on go install github.com/gwen001/gitlab-subdomains@latest
GO111MODULE=on go install -v github.com/glebarez/cero@latest
GO111MODULE=on go install github.com/incogbyte/shosubgo@latest
GO111MODULE=on go install -v github.com/tomnomnom/anew@latest
GO111MODULE=on go install github.com/tomnomnom/unfurl@latest
GO111MODULE=on go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

# Downloading Resolvers
git clone https://github.com/trickest/resolvers

# Downloading wordlist
wget -O best-dns-wordlist.txt https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt

# Downloading .gau.toml for gau
wget https://raw.githubusercontent.com/lc/gau/master/.gau.toml

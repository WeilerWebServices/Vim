#!/bin/bash

set -e

cd $(dirname $0)

server_dir="../servers/reason-language-server"
[ -d $server_dir ] && rm -rf $server_dir
mkdir $server_dir && cd $server_dir

os=$(uname -s | tr "[:upper:]" "[:lower:]")

case $os in
linux) ;;
darwin)
  os="macos"
  ;;
*)
  printf "%s doesn't supported by bash installer" "$os"
  exit 1
  ;;
esac

version="1.7.4"
url="https://github.com/jaredly/reason-language-server/releases/download/$version/rls-$os.zip"
curl -LO "$url"
unzip "rls-$os.zip"

ln -s "./rls-$os/reason-language-server" .

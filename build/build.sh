#!/bin/bash
set -e
set -x
BRANCH=master
# check mounting directory
if [ ! -d /dist ]; then 
	echo "Please mount /dist/ directory before" && exit 1
fi

if [ ! -z $1 ] 
then 
    BRANCH=$1
fi

git clone -b $BRANCH --depth 1 git://github.com/mtoader/google-go-lang-idea-plugin.git google-go-lang-idea-plugin
cd google-go-lang-idea-plugin
ln -s /opt/intelij/`ls /opt/intelij` ./idea-IC
ant -f build-package.xml
cp google-go-language.jar /dist/

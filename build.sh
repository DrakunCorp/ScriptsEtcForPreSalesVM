#!/bin/bash
set -e
set -x

cd Downloads/
wget -cN http://mirrors.jenkins-ci.org/war/latest/jenkins.war
# NOTE: We *MUST* use EXACTLY v3.0.4 here, otherwise mvn -o Offline doesn't work
wget -cN http://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.tar.gz

cd -

docker build -t dsdemo .


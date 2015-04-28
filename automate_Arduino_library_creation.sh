#!/usr/bin/env bash

mkdir SparkFun_<Product Name>_Arduino_Library
cd SparkFun_<Product Name>_Arduino_Library
git init
git pull https://github.com/sparkfun/SFE_Repo_Template.git arduino-lib-repo
git remote add origin <GitHub Arduino Library repository URL>
git push -u origin master
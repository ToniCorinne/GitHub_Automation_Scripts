#!/usr/bin/env bash

mkdir SparkFun_<Product Name>_Spark_Library
cd SparkFun_<Product Name>_Spark_Library
git init
git pull https://github.com/sparkfun/SFE_Repo_Template.git spark-lib-repo
git remote add origin <GitHub Spark Library repository URL>
git push -u origin master
#!/usr/bin/env bash

mkdir <Product Repo Name>
cd <Product Repo Name>
git init
git pull https://github.com/sparkfun/SFE_Repo_Template.git master
git subtree add -P Libraries/Arduino --squash <Arduino Library Repo Link> master
git remote add origin <GitHub repository URL>
git push -u origin master


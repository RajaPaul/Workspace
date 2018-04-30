#!/bin/bash

rm -rf ./mdapi_src_init/
rm -rf ./init_src/
sfdx  force:mdapi:retrieve -r ./mdapi_src_init  -k ./package.xml -u tp_org -w 2 
unzip  ./mdapi_src_init/unpackaged.zip  -d ./init_src


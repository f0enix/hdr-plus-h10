#!/bin/bash
  
MY_ROOT=$PWD
IMAGE_ROOT=${MY_ROOT}/images
HDR_PATH=${IMAGE_ROOT}/hdr_samples
mkdir -p ${IMAGE_ROOT} && cd ${IMAGE_ROOT}
wget http://www.gardling.com/hdr_plus/HDR+%20examples-20200322T082019Z-004.zip
unzip 'HDR+ examples-20200322T082019Z-004.zip' && mv 'HDR+ examples' ${HDR_PATH}

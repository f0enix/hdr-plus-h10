#!/bin/bash
  
MY_ROOT=$PWD
HDR_PATH=${MY_ROOT}/images/hdr_samples
HDR_INPUT_FOLDER=${MY_ROOT}/images/hdr_samples/RAWs
HDR_OUTPUT_FOLDER=${MY_ROOT}/images/hdr_samples/our_outputs
HDR_CMD=${MY_ROOT}/build/hdrplus

# param1: list of images
# param2: name of outputfile
process_hdr () {
  # example: ./hdrplus $HOME/images/hdr_samples/RAWs temp.jpg burst3_5.CR2 burst3_5.CR2
  CMD="$HDR_CMD $HDR_INPUT_FOLDER temp.jpg $1"
  echo $CMD
  $($CMD)
  # It was not possible to direct add an outputpath to the image. That's why I added the mv-command
  mv $HDR_INPUT_FOLDER/temp.jpg $HDR_OUTPUT_FOLDER/$2
}

process_hdr "burst3_5.CR2 burst3_5.CR2" output3_my.jpg 
process_hdr "burst4_0.CR2 burst4_0.CR2" output4_my.jpg 
process_hdr "burst6_0.CR2 burst6_3.CR2 burst6_5.CR2 burst6_6.CR2 burst6_7.CR2" output6_my.jpg 
process_hdr "burst29_0.CR2 burst29_1.CR2 burst29_2.CR2 burst29_6.CR2" output29_my.jpg 
process_hdr "burst29_0.CR2 burst29_1.CR2 burst29_2.CR2 burst29_6.CR2" output29_my.jpg 



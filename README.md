# HDR+ Implementation
Original Document on the subject (by Timothy Brooks): http://timothybrooks.com/tech/hdr-plus

Original git-repositories:
* https://github.com/timothybrooks/hdr-plus/
* https://github.com/OPNA2608/hdr-plus

### Compilation instructions:
1. Use the ```./install.sh``` script
2. Download the example images with ```./download_sample_images.sh```
3. Run the script ```./run.sh```

### HDR+ algorithm examples:

There are three zip files with examples of the HDR+ algorithm at: http://www.gardling.com/hdr_plus

### Compiled Binary Usage:
```
Usage: ./hdrplus [-c comp -g gain (optional)] dir_path out_img raw_img1 raw_img2 [...]
example: ./hdrplus $HOME/images/hdr_samples/RAWs temp.jpg burst3_5.CR2 burst3_5.CR2
```

The -c and -g flags change the amount of dynamic range compression and gain respectively. Although they are optional because they both have default values. 


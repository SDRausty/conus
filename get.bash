#!/usr/bin/env bash
# Copyright 2020 (c) all rights reserved by WAE;  see LICENSE  
# https://wae.github.io/conus hosted courtesy https://pages.github.com
################################################################################
set -eu
_CGEOS_() {
	curl https://cdn.star.nesdis.noaa.gov/$GOES/ABI/FD/GEOCOLOR/1808x1808.jpg -o $(date +%s).1808x1808.$GOES.jpg 
}
DATE="$(date +%Y%m%d)"
[ ! -d "$DATE" ] && mkdir -p "$DATE" 
cd "$DATE" 
wget https://www.wpc.ncep.noaa.gov//noaa/national_forecast.jpg
wget https://radar.weather.gov/Conus/Loop/NatLoop_Small.gif
wget https://graphical.weather.gov/images/conus/MaxT{1..7}_conus.png
wget https://graphical.weather.gov/images/conus/MinT{1..7}_conus.png
wget https://graphical.weather.gov/images/conus/T{1..27}_conus.png
wget https://graphical.weather.gov/images/conus/QPF{1..12}_conus.png
wget https://graphical.weather.gov/images/conus/WindSpd{1..27}_conus.png
wget https://graphical.weather.gov/images/conus/WaveHeight{1..20}_conus.png
wget https://graphical.weather.gov/images/conus/ApparentT{1..27}_conus.png
GOES="GOES16"
_CGEOS_
GOES="GOES17"
_CGEOS_
# get.bash EOF

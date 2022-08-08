#!/bin/bash

#Update repos, upgrade Ubuntu SO and install instala Apache2 and Unzip
echo -e "Updating repositories and system" \
    && sudo apt update && sudo apt upgrade -y \
    && echo " " \
    && echo -e "Installing Apache2 and Unzip" \
    && sudo apt install apache2 unzip -y \
    && echo " "

#Download zipped example site, uncompress example site and copy it files to webroot Apache dir
echo -e "Downloading zipped example site" \
    && wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip" -O /tmp/linux-site-dio-main.zip \
    && echo " " \
    && echo -e "Uncompres example site" \
    && unzip -o /tmp/linux-site-dio-main.zip -d /tmp/ \
    && echo " " \
    && echo -e "Copy example site to webroot Apache dir" \
    && sudo cp --recursive --verbose /tmp/linux-site-dio-main/* /var/www/html/

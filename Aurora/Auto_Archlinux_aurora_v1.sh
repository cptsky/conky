#!/bin/bash -ex
# autoscript installs all the necessary programs and requirements to run all 
# different widgets
#==============================================================================
#!/bin/bash
#======================================================================================
#
#                  -`
#                  .o+`                 
#                 `ooo/                  
#                `+oooo:                 M  a  d  e    on 
#               `+oooooo:               
#               -+oooooo+:              
#             `/:-:++oooo+:             
#            `/++++/+++++++:                      A  R  C  H
#           `/++++++++++++++:           
#          `/+++ooooooooooooo/`         
#         ./ooosssso++osssssso+`        
#        .oossssso-````/ossssss+`       
#       -osssssso.      :ssssssso.          F  o   r   
#      :osssssss/        osssso+++.     
#     /ossssssss/        +ssssooo/-     
#   `/ossssso+/:-        -:/+osssso+-                           A   R   C   H
#  `+sso+:-`                 `.-/+oso: 
# `++:.                           `-/+/
# .`                                 `/
#
#======================================================================================
#                               aurora
# Date    : 07/07/2015
# Author  : Erik Dubois at http://www.erikdubois.be
# Version : v2.9.7
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#=============================================================================

##############################################################################
#############################  A R C H L I N U X  ############################
##############################################################################


echo "Installing conky and the required packages"
echo "----------------------------------------------------------------------"
echo 'Purpose 	: automatisation of installation'
echo "Author 	: Erik Dubois"
echo "Use 		: at own risk and with fun"
echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
echo "Creation Date 	: 	10/05/2015"
echo "Version 			:	v2.9.7 "
echo
echo
echo "This script will install conky,conkymanager,"
echo "sensory input and harddisk temperature etc"
echo "you will NEED these"
echo "some of the functionality depends on it"
echo "More information on http://conky.sourceforge.net/"
echo "More information on http://erikdubois.be"
echo "----------------------------------------------------------------------"
echo "Overview of packages"
echo "----------------------------------------------------------------------"
echo "CURL"
echo "CURL - Get a file from an HTTP, HTTPS or FTP server"
echo "curl is a client to get files from servers using any of the supported"
echo "protocols." 
echo "----------------------------------------------------------------------"
echo "LM-SENSORS"
echo "utilities to read temperature/voltage/fan sensors"
echo "Lm-sensors is a hardware health monitoring package for Linux." 
echo "----------------------------------------------------------------------"
echo "HDDTEMP"
echo "hard drive temperature monitoring utility"
echo "The hddtemp program monitors and reports the temperature"
echo "----------------------------------------------------------------------"
echo "DMIDECODE"
echo "To be able to read out what motherboardname you have."
echo "----------------------------------------------------------------------"
echo "TRANSMISSION-CLI"
echo "To be able to read out what torrent downloads you have."
echo "----------------------------------------------------------------------"
echo "SPOTIFY"
echo "For the music you love. Or else no widget"
echo "----------------------------------------------------------------------"
echo "SMART MONITOR TOOLS"
echo "To read out various information on your harddisk"
echo "----------------------------------------------------------------------"
echo "LAST BUT NOT LEASE CONKY AND THE CONKY MANAGER"
echo "----------------------------------------------------------------------"
echo "Conky is a tool to monitor various parts in your computer."
echo "----------------------------------------------------------------------"
echo "adding REPOSITORY for conky-manager and installing conky etc..."
echo "----------------------------------------------------------------------"
echo " A R C H  REPOSITORIES"

sudo pacman -S lm_sensors hddtemp dmidecode smartmontools
sudo pacman -S curl transmission-cli transmission-gtk


echo " A U R REPOSITORIES"

packer -S conky-lua --noedit
packer -S conky-manager --noedit


echo "Hidden folder conky is created if it is not there"
[ -d "~/.conky" ] || mkdir -p $HOME/".conky"
echo "----------------------------------------------------------------------"
echo "CONKY IS INSTALLED WITH ALL ITS COMPONENTS"
echo "----------------------------------------------------------------------"
echo "ALMOST THERE"
echo "----------------------------------------------------------------------"
sudo sensors-detect
sudo systemctl enable sensord.service
sudo systemctl start sensord.service
echo "----------------------------------------------------------------------"
echo "SENSORS-DETECT DONE"
echo "SOME CHANGES MUST BE MADE MANUALLY E.G. fill in your gmail account settings"
echo "THE INSTALL FILE IS THERE TO HELP"
echo "----------------------------------------------------------------------"
echo "DONE DONE DONE DONE DONE DONE DONE DONE DONE DONE DONE DONE DONE DONE"

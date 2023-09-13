# rpi-camera
All code and documentation related to managing a pi camera for monitoring greenspace projects and other activities

raspberry_camera.pl - perl script to be run through cron to take pictures on a given interval.  Currently interval is manually
set when creating a crontab entry. In the future we should make this a configuration parameter that could be maintained in a
config file. If so, we could then run the raspberry_camera.pl script every minute, but only take a picture based on interval setting
and last picture timestamp.

camera_download.py - To be written. Will provide a count of current number of pictures in download directory, ask if you want to
download them, if so, zip up the files and download.  If downloading, the script will archive the existing images by moving a copy 
of the zip file to an archive directory, and then deleting the current set of files that were zipped and downloaded.
This script should be written in flask for now, and also provide the user with the current free space, and the number of archive 
files in the archive directory and their total size.  Management of archive files will be a manual process for now.

NOTES:
ffmpeg can be installed on raspberry pi using these instructions:
https://linuxhint.com/install-ffmpeg-raspberry-pi/

Here are some notes on using ffmpeg to convert still images to a timelapse:
https://superuser.com/questions/1499968/creating-timelapse-from-still-images-jpg-to-mp4-using-ffmpeg

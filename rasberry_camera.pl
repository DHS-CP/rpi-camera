#!/usr/bin/perl
# Sample script for taking a picture with a raspberry camera, and 
# storing it in a directory with a datestamp filename.
# In an improved version, the output director and filename prefix would be
# passed in as parameters, so that it could be used in multiple applications
# without rewriting.

# Prifix of filename
$fnprefix="GS-Timelaps-";

# Output directory for files (make sure it exists
$outputdir="/logs/img";

#datestamp used for creating filename
$ds=`date '+%y%m%d%H%M'`;chop $ds;

#full filename, including output dir
$fout=$outputdir . "/" . $fnprefix . $ds .".jpg";

# test to make sure that we have the full name created correctly
print($fout ."\n");

# uncomment the following line on the raspberry pi with camera connected and 
# set up, and output directory created and writeable

#Note, you may have to provide full path to raspistill command
$r= system("raspistill -o " . $fout);
print ("result= ".$r);
# to set up to run every 15 minutes in a corntab, use the following command
# crontab -e (to edit crotabfile)
# Then add
# */15 * * * * /path/to/raspi-pictures.pl
#
# See https://crontab.guru/every-15-minutes 
# and https://www.computerhope.com/unix/ucrontab.htm
# for help with crontab

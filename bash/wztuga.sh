#!/bin/bash
if [ $# -lt 3 ]
then
    echo "usage: ./wztuga.sh <season_number> <start_episode> <end_episode>"
    exit
fi
rm pb$1* 2> /dev/null #quiet!!!
for i in $(seq $2 $3)
do
echo $i
if [ $i -le 9 ]
then
    wget http://www.wareztuga.tv/subs/Prison_BreakS0$1E0${i}SD.srt -O "pb$10$i.srt" -nv
elif [ $i -eq 10 ] #workaround for episode 10... dummy
then
    wget http://www.wareztuga.tv/subs/Prison_BreakS$1E${i}SD.srt -O "pb$1$i.srt" -nv
else
    wget http://www.wareztuga.tv/subs/Prison_BreakS0$1E${i}SD.srt -O "pb$1$i.srt" -nv
fi
done

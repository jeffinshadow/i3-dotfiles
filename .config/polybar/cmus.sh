#!/bin/sh

# script to show the music playing on cmus on polybar

artist=$(echo -n $(cmus-remote -C status | grep artist -m 1 | cut -c 12-))
song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))

if [ -z "$artist" ]
then
      echo -n "No music playing"
else
      echo -n "$artist - $song"
fi
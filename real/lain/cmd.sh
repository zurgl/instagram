#!/usr/bin/env bash

yt-dl url
ffmpeg -i urls.mkv lain-theme.mp4
ffmpeg -ss 203 -to 217 -i lain-ost.mp4 lain-theme.mp4 
ffmpeg -i lain-theme.mp4 -vn -c:a copy lain-theme.m4a 
ffmpeg -loop 1 -y -i 01.png -i lain-theme.m4a  -shortest last.mp4

#!/usr/local/bin/python3

import glob
import os
import subprocess

files = glob.glob('*.mkv')
for fil in files:
    cmd = ["ffmpeg","-i",fil,"-vf","scale=1280x720:flags=bilinear","-c:v","libx264","-preset","ultrafast","-crf","23",fil+".mp4"]
    subprocess.call(cmd)
    cmd = ['rm', fil]
    subprocess.call(cmd)
    


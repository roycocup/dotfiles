#!/usr/bin/python3
import os
import glob

filenames = glob.glob("*.mp4")
for filename in filenames:
        cmd = []
        cmd.append(f"nice -n15 ffmpeg -i {filename} -vcodec libx265 -crf 20 comp.{filename} && ")
        cmd.append(f"mv comp.{filename} shortened/{filename} && ")
        cmd.append(f'rm -rf {filename}')
       
        os.system("".join(cmd))


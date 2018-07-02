import os
import time
print("sleeping...")
time.sleep(10)
print("awake and doing job")
while(1):
	os.system("fswebcam -p YUYV -d /dev/video0 -r 640x480 --no-banner /home/pi/auto_vis/improved/out.jpg")
	time.sleep(1)

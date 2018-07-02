import sys
from PIL import Image
from resizeimage import resizeimage
import PIL.Image

file_name = "animal_3g.txt"
with open(file_name) as f:
	content = f.readlines()

content = [x.strip() for x in content]

#print content[2]
#start = 0
for i in content:
	if "New Session Ticket" in i:
		#print i
		tem = i.split(" ")
		start = tem[0]

end = len(content) - 2
print start

upload_time = []
download_time = []
algo_time = []
speed = []
sizee = []
#download_time[0] = 21
start = int(start)
end = int(end)
midi1=0
midi2=0
count = 0
f = 0
size = 0.0
for i in range(start,end):
	tem = content[i].split(" ")
	#print tem[1]
	size_tem1 = int(tem[6])
	size_tem2 = int((content[i+1].split(" "))[6])
	#print size
	tem_time1 = float(tem[1])
	tem_time2 = float((content[i+1].split(" "))[1])
	#si = int(tem[1])
	if i == (start+1):
		si = tem_time1
		size+=size_tem1
	elif "ACK" in content[i] and "TCP segment of a" in content[i+1] and (tem_time2 - tem_time1) > 0.02:
		#print "here"
		si = tem_time2
		ei = tem_time1
		#download_time.append(tem_time1 - midi2)
		new = round((tem_time1 - midi2)*1000,0)
		download_time.append(new)
		size = size_tem2
	elif "ACK" in content[i] and "Application Data" in content[i+1] and (tem_time2 - tem_time1) > 0.5:
		midi1 = tem_time1
		midi2 = tem_time2
		algo_time.append(round((midi2 - midi1)*1000,0))
		upload_time.append(round((midi1 - si)*1000,0))
		spd = size/(midi1-si)
		spd = round(float(float(spd)/float(1000)),0)
		sizee.append(round(float(float(size)/float(1000)),0))
		speed.append(spd)
		size = 0
	elif "FIN" in content[i+1] and "ACK" in content[i] and f==0:
		new = round((tem_time1 - midi2)*1000,0)
		download_time.append(new)
		f = 1
	
	size += size_tem1	

print len(upload_time)
print len(algo_time)
print len(download_time)

while(len(download_time)<24):
	download_time.append(0)
if len(download_time)==24:
	download_time.append(0)
for i in range(0,25):
	print str(upload_time[i]) + "," + str(algo_time[i]) + "," + str(download_time[i]) + "," + str(sizee[i]) + ", " + str(speed[i]) 

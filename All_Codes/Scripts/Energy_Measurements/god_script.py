import os
count = 0
while(1):
	os.system("./nscript")
	count = count + 1
	with open("count.txt","w") as f:
		f.write(str(count))

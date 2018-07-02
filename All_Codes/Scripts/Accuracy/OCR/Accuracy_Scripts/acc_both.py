import argparse
import base64
#import picamera
import json
import sys

from time import time
from collections import Counter

def common(str1,str2):
	dict1 = Counter(str1)
	dict2 = Counter(str2)
	commonDict = dict1 & dict2
	commonChars = list(commonDict.elements())
	return len(commonChars)

with open("/home/pi/Accuracy_new/OCR/xml_parsed_both/tem1.txt") as f:
    content_original = f.readlines()

content_original = [x.strip() for x in content_original]

with open("/home/pi/Accuracy_new/OCR/Output_Both/tem.txt") as f:
   content_mine = f.readlines()

content_mine = [x.strip() for x in content_mine]

original_data = ""
my_data = ""
original_data_full = ""
original_fin_arr = []
print(len(content_original))
print(len(content_mine))
matched_chars = 0
total_chars = 0

for i in range(0,len(content_mine)):
	tem = "/home/pi/Accuracy_new/OCR/xml_parsed_both/" + content_original[i]
        with open(tem) as f:
                original_data_arr = f.readlines()
	original_data_arr = [x.strip() for x in original_data_arr]
        original_data = ""
	orig= ""
#	print original_data_arr
        for j in range(0,len(original_data_arr)):
		original_data = original_data + original_data_arr[j]
 #       print original_data
	original_data = original_data.split(" ")
#	print original_data
        for j in range(0,len(original_data)):
#		print original_data[j]
		orig= orig + original_data[j]
#		print orig
#	print orig
        mine_data = ""
	mine_data_full = ""
        tem = "/home/pi/Accuracy_new/OCR/Output_Both/" + content_mine[i]
        with open(tem) as f:
                mine_data_arr = f.readlines()
        mine_data_arr = [x.strip() for x in mine_data_arr]
        for j in range(0,len(mine_data_arr)):
                mine_data = mine_data + mine_data_arr[j]
        mine_data = mine_data.split(" ")
        for i in mine_data:
                mine_data_full = mine_data_full + i;
#        print mine_data_full
#        mine_fin_arr.append(mine_data_full)
	total_chars = total_chars + len(orig)
	#print total_chars
	tem = common(orig,mine_data_full)
	matched_chars = matched_chars + tem	


print total_chars
print matched_chars
accuracy = float(matched_chars)/float(total_chars) * 100
print accuracy
#for i in content_original:
#	original_data = ""
#	original_data_full = ""
#	tem = "/home/pi/Accuracy_new/OCR/xml_parsed/" + i
 #       with open(tem) as f:
#		original_data_arr = f.readlines()
#	original_data_arr = [x.strip() for x in original_data_arr]
#	for j in range(0,len(original_data_arr)):
#		original_data = original_data + original_data_arr[j]
#	original_data = original_data.split(" ")
#	for i in original_data:
#		original_data_full = original_data_full + i;
##	print original_data_full
#	original_fin_arr.append(original_data_full)

#print(len(original_fin_arr))
#print original_fin_arr[175]

#print(len(content_mine))
#mine_fin_arr = []
#for i in content_mine:
#	mine_data = ""
#	mine_data_full = ""
#	tem = "/home/pi/Accuracy_new/OCR/Output_English/" + i
#	with open(tem) as f:
#		mine_data_arr = f.readlines()
#	mine_data_arr = [x.strip() for x in mine_data_arr]
#	for j in range(0,len(mine_data_arr)):
#		mine_data = mine_data + mine_data_arr[j]
#	mine_data = mine_data.split(" ")
#	for i in mine_data:
#		mine_data_full = mine_data_full + i;
##	print mine_data_full
#	mine_fin_arr.append(mine_data_full)
#
#print(len(mine_fin_arr))
#acc = []
#accuracy = 0;
#for i in range(0,len(original_fin_arr)):
#	dist = levenshteinDistance(original_fin_arr[i],mine_fin_arr[i])
##	print i
#	tem = 1 - float(dist)/len(original_fin_arr[i])
#	#print tem
#	acc.append(tem)

#for i in range(len(acc)):
#	accuracy = accuracy + acc[i]
#
#accuracy = accuracy/len(acc) * 100

#print accuracy


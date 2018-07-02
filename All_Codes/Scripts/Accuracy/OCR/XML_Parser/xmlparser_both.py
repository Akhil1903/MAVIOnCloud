from xml.dom import minidom

with open("xml_data.txt") as f:
    content = f.readlines()

content = [x.strip() for x in content] 

print(len(content))

dict = {}
for i in range(0,len(content)):
    filename = content[i]
    xmldoc = minidom.parse(filename)
#    tem = filename.find("_")
#    illum = filename[tem+1]
#    print illum
    print filename    
    data = []
    x1 = xmldoc.getElementsByTagName('eng')
    x2 = xmldoc.getElementsByTagName('hin')
    for i in range(0,len(x1)):
	data.append(x1[i].firstChild.nodeValue)
    print(len(x2))
    if(len(x2)>0):	
    	for i in range(0,len(x2)):
		data.append(x2[i].firstChild.nodeValue.encode('utf-8'))	
#    print len(x1)
    #print xmin
    fname = "<path to all codes>/Scripts/Accuracy/OCR/xml_parsed_both/" + filename + "orig.txt" 
    #dict[content[i]].append(illum)
    print fname
    with open(fname,"w") as f:
	for i in range(0,len(data)):
    	    f.write(data[i])
	    f.write("\n")
#print dict
#print my_var + "," + dict[my_var][0] + "," + str(dict[my_var][1]) + dict[my_var][2] + dict[my_var][3]

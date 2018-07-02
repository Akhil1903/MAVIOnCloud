from xml.dom import minidom

with open("data.txt") as f:
    content = f.readlines()

content = [x.strip() for x in content] 

print(len(content))

dict = {}
for i in range(0,len(content)):
    filename = content[i]
    xmldoc = minidom.parse(filename)
    tem = filename.find("_")
    illum = filename[tem+1]
#    print illum
    x1 = xmldoc.getElementsByTagName('xmin')
    xmin = x1[0].firstChild.nodeValue
    x2 = xmldoc.getElementsByTagName('xmax')
    xmax = x2[0].firstChild.nodeValue
    y1 = xmldoc.getElementsByTagName('ymin')
    ymin = y1[0].firstChild.nodeValue
    y2 = xmldoc.getElementsByTagName('ymax')
    ymax = y2[0].firstChild.nodeValue
#    print xmin
#    print xmax
#    print ymin
#    print ymax
    x = int(xmax) - int(xmin)
    y = int(ymax) - int(ymin)
#    print x
#    print y
    dict[content[i]] = [str(x) + "x" + str(y),illum] 
    #dict[content[i]].append(illum)

#print dict

with open("output.txt","w") as f:
    for my_var in dict:
	f.write(my_var + "," + dict[my_var][0] + "," + dict[my_var][1])
	f.write("\n")			

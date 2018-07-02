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
    print filename    
    x1 = xmldoc.getElementsByTagName('xmin')
    xmin = x1[0].firstChild.nodeValue
    x2 = xmldoc.getElementsByTagName('xmax')
    xmax = x2[0].firstChild.nodeValue
    y1 = xmldoc.getElementsByTagName('ymin')
    ymin = y1[0].firstChild.nodeValue
    y2 = xmldoc.getElementsByTagName('ymax')
    ymax = y2[0].firstChild.nodeValue
    po = xmldoc.getElementsByTagName('pose')
    pose = po[0].firstChild.nodeValue
    vi = xmldoc.getElementsByTagName('view')
    view = vi[0].firstChild.nodeValue
#    print xmin
#    print xmax
#    print ymin
#    print ymax
    x = int(xmax) - int(xmin)
    y = int(ymax) - int(ymin)
    area = x * y
#    print x
#    print y
    dict[content[i]] = [str(x) + "x" + str(y),area,pose,view] 
    #dict[content[i]].append(illum)

#print dict
#print my_var + "," + dict[my_var][0] + "," + str(dict[my_var][1]) + dict[my_var][2] + dict[my_var][3]
with open("output.txt","w") as f:
    for my_var in dict:
	f.write(my_var + "," + dict[my_var][0] + "," + str(dict[my_var][1]) + "," + dict[my_var][2] + "," + dict[my_var][3])
	f.write("\n")			
#	print my_var + "," + dict[my_var][0] + "," + str(dict[my_var][1]) + "," + dict[my_var][2] + "," + dict[my_var][3]

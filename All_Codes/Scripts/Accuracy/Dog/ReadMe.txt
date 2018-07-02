Purpose:
	To find the accuracy of Dog Detection
How To Run:
	Copy and paste the contents of the "XML_Parser" folder in the folder containing the annotations of the MAVI Dog Dataset.
	Run the command "python xmlparser.py"
	Copy and paste the contents of the "Accuracy_Scripts" folder in the folder containing the images of the MAVI Dog Dataset
	Run the command "python animalcopy.py"
Output:
	xmlparser.py: This file outputs a csv data in the file output_xml.txt which has the format file_name,bounding_box_size,area of the bounding box,pose,view
	animalcopy.py: This file outputs the data in a txt file which contains the information about in which all files Dogs are detected and in which all files Dogs are not detected.
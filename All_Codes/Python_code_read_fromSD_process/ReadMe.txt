animal_network_analysis:
	Purpose:
		To perform network latency analysis on animal images.
		"animalcopy.py" in the Cow Folder runs just the Animal Detection algorithm on 25 images of cow.
		"animalcopyall.py" in the Cow Folder runs all the algorithms(Face,Animal,Text detection) on 25 images of cow.
	How to Run:
		"python animalcopy.py"
		"python animalcopyall.py"
	Output:
		The output is printed on the terminal.
		The output comprises a comma separated information of the label detected and the ith number of image processed.
face_our_dataset_network_analysis
	Purpose:
		To perform network latency analysis on face images.
		The folder "1", "2" and "4" contain images containing 1 face, 2 faces and 4 faces respectively.
		"faceonlycopy.py" in the Cow Folder runs just the Animal Detection algorithm on 25 images of face.
		"all.py" in all the sub folders runs all the algorithms(Face,Animal,Text detection) on 25 images of face.
	How to Run:
		"python faceonlycopy.py"
		"python all.py"
	Output:
		The output is printed on the terminal.
		The output comprises of two line corresponding to every image. The first line containing the number of faces detected and the second line showing the ith number of image being processed.
mixed_resized
	Purpose:
		To perform network latency analysis on mixed images.
		"tem.py" runs all the algorithms(Face,Animal,Text detection) on 25 mixed images.
	How to Run:
		"python tem.py"
	Output:
		The output is printed on the terminal.
		Output is a comma separated string comprising of "number_of_faces_detected,label,text_detected,ith image being processed".
sbd_network_analysis
	Purpose:
		To perform network latency analysis on signboard images.
		"ocrnewcopy.py" runs only English text detction on 25 signboard images.
		"ocrnewcopyall.py" runs only English text detction along with face and label detection on 25 signboard images.
		"ocrnewcopyboth.py" runs both English and Hindi text detction on 25 signboard images.
		"ocrnewcopybothall.py" runs both English and Hindi text detction along with face and label detection on 25 signboard images.
	How To Run:
		python <filename>.py
	Output:
		The output is printed on the terminal.
		Output is a comma separated string comprising of "text_detected,ith image being processed".
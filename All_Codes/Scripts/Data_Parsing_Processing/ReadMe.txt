Purpose:
	To parse the data from the network output given by tshark
How To Run:
	Copy and paste the tshark output files in each of the relevant folders.
	Run "python parser.py"
	One can change the file name by modifying the "file_name" variable in the parser.py script. This file_name corresponds to the tshark output file, which is used as input by this script.
Output:
	The output is printed on the terminal. It is a csv data with the format "Upload_time(ms),Cloud_Run_Time(ms),Download_Time(ms),Size(Kbytes),Speed(Kbytes/sec)".

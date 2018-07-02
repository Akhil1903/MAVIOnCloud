Purpose:
	This folder contains all the files pertaining to the prototype.
	Cross Compiling script_improved.c produces the binary auto_improved.
	exec.sh runs the cross compiled binary auto_improved.
	tem1.py and tem_threading.py are the files required by the binary auto_improved.
	tem1.py and tem_threading.py are the files that interact with the cloud and do the entire cloud procssing stuff.
     The file names tem1 and tem_threading can be changed, but the appropriate change needs to be reflected in the script_improved.c file also.

How to Run:
	Generate the binary by cross compiling "script_improved.c" (generate on the VM)
	Copy paste all of these files in a folder on Raspberry Pi.
     The prototype works automatically on startup. However, if you want to debug or monitor the boot or change something, follow the below steps.
	Open two terminals
	First, run "python camera.py"
	Secondly, run "sh exec.sh"

Output:
	The output will be displayed on the terminals.
	The output consists of a JSON string which is sent to the MAVI app.
	The JSON string consists of information like number of faces detected, animal detected or not, signboard detected or not

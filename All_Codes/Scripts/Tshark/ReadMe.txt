Purpose:
	To capture network behavior including tcp packets sent and received.
How To Run:
	Run the command "tshark -i wlan0 -f "tcp" > <path to the destination txt file>.txt"
	"wlan0" is used when the internet connectivity is provided through WiFi hotspot.
	"usb0" should be used in place of "wlan0" if the internet connectivity is provided through USB Tethering.
Output:
	The output is printed in a txt file. It shows information such as source IP, destination IP, packet size, time at which the packet is sent, packet type, etc.
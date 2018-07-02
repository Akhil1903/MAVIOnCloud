"""
Google Vision API Tutorial with a Raspberry Pi and Raspberry Pi Camera.  See more about it here:  https://www.dexterindustries.com/howto/use-google-cloud-vision-on-the-raspberry-pi/

Use Google Cloud Vision on the Raspberry Pi to take a picture with the Raspberry Pi Camera and classify it with the Google Cloud Vision API.   First, we'll walk you through setting up the Google Cloud Platform.  Next, we will use the Raspberry Pi Camera to take a picture of an object, and then use the Raspberry Pi to upload the picture taken to Google Cloud.  We can analyze the picture and return labels (what's going on in the picture), logos (company logos that are in the picture) and faces.

This script uses the Vision API's label detection capabilities to find a label
based on an image's content.

"""

import argparse
import base64
#import picamera
import json
import sys
from googleapiclient import discovery
from oauth2client.client import GoogleCredentials
from time import time

def main():
    #takephoto() # First take a picture
    """Run a label request on a single image"""
    
    with open("data.txt") as f:
        content = f.readlines()
# you may also want to remove whitespace characters like `\n` at the end of each line
    content = [x.strip() for x in content] 
    yes = []
    no = []
#    text_file = open("output1.txt", "w")
    credentials = GoogleCredentials.get_application_default()
    service = discovery.build('vision', 'v1', credentials=credentials)
    output = []
    print (len(content))	
    for i in range (0,len(content)):
        t2 = time()
        with open(content[i], 'rb') as image:
            image_content = base64.b64encode(image.read())
            service_request = service.images().annotate(body={
                'requests': [{
                    'image': {
                        'content': image_content.decode('UTF-8')
                    },
                    'features': [{
                        'type': 'FACE_DETECTION',
                        'maxResults': 10
                    }]
                }]
            })
            response = service_request.execute()
    #        print json.dumps(response, indent=4, sort_keys=True)	#Print it out and make it somewhat pretty.
      	json_data = json.dumps(response)
      	item_dict = json.loads(json_data)
      	if 'faceAnnotations' in item_dict['responses'][0]:
      		#print (len(item_dict['responses'][0]['faceAnnotations']))
		yes.append(content[i])
      	else:
      		#print "0"
		no.append(content[i])
#	if len(item_dict['responses'][0]['faceAnnotations']) == 2:
	print i
    # 	t1 = time()
    # 	output.append( "image " + str(i) +":  %f" %(t1-t2))
    with open("output.txt","w") as f:
      	f.write("Yes\n")
	for i in yes:
             f.write(i)
             f.write("\n")
	f.write("NO:")
	f.write("\n")
	for i in no:
	     f.write(i)
	     f.write("\n")	
if __name__ == '__main__':

    main()

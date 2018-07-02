
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

credentials = GoogleCredentials.get_application_default()
service = discovery.build('vision', 'v1', credentials=credentials)

def run_algos():
    
    t0 = time()
    #print sys.argv[2]
    #print "adadadad"
    
#    print("in threading")	
    with open(sys.argv[1], 'rb') as image:
        image_content = base64.b64encode(image.read())
        service_request = service.images().annotate(body={
            'requests': [{
                'image': {
                    'content': image_content.decode('UTF-8')
                },
                'features': [{
                    'type': 'FACE_DETECTION',
                    'maxResults': 10
                },
		{
		    'type': 'LABEL_DETECTION',
		    'maxResults': 10
		},
                {
                    'type': 'TEXT_DETECTION',
                    'maxResults': 50
                }
		]
            }]
        })
	t1 = time()
        response = service_request.execute()
	t3 = time()
#	print 'execute response time %f' %(t3-t1)
#        print json.dumps(response, indent=4, sort_keys=True)	#Print it out and make it somewhat pretty.
	json_data = json.dumps(response)
	item_dict = json.loads(json_data)
	#print item_dict['responses'][1]
	if 'faceAnnotations' in item_dict['responses'][0]:
		sys.stdout.write(str(len(item_dict['responses'][0]['faceAnnotations']))+ ",")
	else:
		sys.stdout.write("0,"),
	if 'labelAnnotations' in item_dict['responses'][0]:
        	if "cow" in item_dict['responses'][0]['labelAnnotations'][0]['description'] or "bull" in item_dict['responses'][0]['labelAnnotations'][0]['description'] or "cattle" in item_dict['responses'][0]['labelAnnotations'][0]['description']:
        		sys.stdout.write("cow,")
        	elif "dog" in item_dict['responses'][0]['labelAnnotations'][0]['description']:
        		sys.stdout.write("dog,")
        	else:
        		sys.stdout.write ((item_dict['responses'][0]['labelAnnotations'][0]['description']) + ",")
	if 'textAnnotations' in item_dict['responses'][0]:
                #if 'labelAnnotations' in item_dict['responses'][0]:
                #    if "sign" in item_dict['responses'][0]['labelAnnotations'][0]['description'] or "signage" in item_dict['responses'][0]['labelAnnotations'][0]['description'] :
            data =  item_dict['responses'][0]['textAnnotations'][0]['description'].splitlines()
		    for i in data:
                sys.stdout.write (i + ","),
		#sys.stdout.write(len(item_dict['responses'][0]['textAnnotations'][0]['description']))
    else:
            sys.stdout.write("False")

	t2 = time()
#	print 'overall time %f' %(t2-t0)

run_algos()

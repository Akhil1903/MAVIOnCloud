#
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
    t0 = time()
    credentials = GoogleCredentials.get_application_default()
    service = discovery.build('vision', 'v1', credentials=credentials)
    
    batch_size = 15
    
    num_images = 60
    batches = num_images/batch_size
    print batches    
    output = []
    image_contents = []
    
    for i in range (0,num_images):
        #t1 = time()
        with open(content[i], 'rb') as image:
             image_contents.append(base64.b64encode(image.read()))
           
    
    batch_request = []
    ind = 0
    for j in range(0,batches):
		batch_request = []		    	
		for i in range(0,batch_size):
			batch_request.append({
    				 'image': {
                    'content': image_contents[i+ind].decode('UTF-8')
                },
					'imageContext': {
                	'languageHints': ["en"]
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
                    }]
            })
		service_request = service.images().annotate(body={'requests': batch_request})    
		ind = ind + batch_size
		response = service_request.execute()
		json_data = json.dumps(response)
		item_dict = json.loads(json_data)
		for i in range(0,batch_size):		
			if 'faceAnnotations' in item_dict['responses'][i]:
				sys.stdout.write(str(len(item_dict['responses'][i]['faceAnnotations']))+ ",")
        		else:
        			sys.stdout.write("0,"),
        		if 'labelAnnotations' in item_dict['responses'][i]:
        			if "cow" in item_dict['responses'][i]['labelAnnotations'][0]['description'] or "bull" in item_dict['responses'][i]['labelAnnotations'][0]['description'] or "cattle" in item_dict['responses'][i]['labelAnnotations'][0]['description']:
        				sys.stdout.write("cow,")
        			elif "dog" in item_dict['responses'][i]['labelAnnotations'][0]['description']:
        				sys.stdout.write("dog,")
        			else:
        				sys.stdout.write ((item_dict['responses'][i]['labelAnnotations'][0]['description']) + ",")
        		if 'textAnnotations' in item_dict['responses'][i]:
        			data =  item_dict['responses'][i]['textAnnotations'][0]['description'].splitlines()
        			for i in data:
        				sys.stdout.write (i + ","),
                 #sys.stdout.write(len(data)),
        		else:
        			sys.stdout.write("False")
			print("\n")
    t2 = time()
    #print i
           # output.append( "image " + str(i) +":  %f" %(t1-t2))
       # with open("output_all.txt","w") as f:
       #     for i in output:
       #         f.write(i)
       #         f.write("s\n")
    print 'overall time %f' %(t2-t0)

if __name__ == '__main__':

    main()

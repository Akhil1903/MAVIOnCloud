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
from time import time

from googleapiclient import discovery
from oauth2client.client import GoogleCredentials


def main():
    #takephoto() # First take a picture
    """Run a label request on a single image"""

    credentials = GoogleCredentials.get_application_default()
    service = discovery.build('vision', 'v1', credentials=credentials)
    with open("file.txt") as f:
        content = f.readlines()
    # you may also want to remove whitespace characters like `\n` at the end of each line
    content = [x.strip() for x in content]
    output = []
    for i in range(0,25):
        with open(content[i], 'rb') as image:
            t2 = time()
            image_content = base64.b64encode(image.read())
            service_request = service.images().annotate(body={
                'requests': [{
                    'image': {
                        'content': image_content.decode('UTF-8')
                    },
            'imageContext': {
                'languageHints': ["en","hi"]
            },
                    'features': [{
                        'type': 'TEXT_DETECTION',
                        'maxResults': 50
                    }]
                }]
            })
            response = service_request.execute()
    #        print json.dumps(response, indent=4, sort_keys=True)   #Print it out and make it somewhat pretty.
        json_data = json.dumps(response)
        item_dict = json.loads(json_data)
        item_dict1 = item_dict
        if 'textAnnotations' in item_dict['responses'][0]:
            data =  item_dict['responses'][0]['textAnnotations'][0]['description'].splitlines()
#            sys.stdout.write(len(item_dict['responses'][0]['textAnnotations'][0]['description']))
	    print data	 
        else:
            data = "False"
        print i
        fname = str(content[i]) + ".txt"
        with open(fname,"w") as f:
            for j in data:
                f.write(j.encode('utf-8'))
                f.write("\n")

if __name__ == '__main__':

    main()

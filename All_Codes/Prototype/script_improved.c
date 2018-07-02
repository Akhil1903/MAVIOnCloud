#include "opencv2/opencv.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui_c.h>
#include "opencv2/imgcodecs.hpp"
#include <iostream>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
//#include <fstream>
#include <stdint.h>
#include <string>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <arpa/inet.h>
#include <errno.h>
#include <ctype.h>
#include <fcntl.h>
#include <sstream>
#include <pthread.h>
#include <time.h>
#include <getopt.h>
#include <signal.h>
#include <sys/param.h>
#include <sys/ioctl.h>
#include <bluetooth/bluetooth.h>
#include <bluetooth/hci.h>
#include <bluetooth/hci_lib.h>
#include <bluetooth/sdp.h>
#include <bluetooth/sdp_lib.h>
#include <bluetooth/rfcomm.h>

#include <pthread.h>

int global_on = 1;

void error(const char *msg)
{
	perror(msg);
	exit(1);
}

using namespace cv;
using namespace std;
char buffer[10000];
char buffer1[4];
int no_faces;
char faces[10][40];
char sbdtext[10][1000];
int texture[6][12];
int row;
int col;
float x_pos;
float y_pos;
float z_pos;
char signboard[100];
char signboardText[10000];
int sbdcount;
int cows;
int dogs;
int mode;
char cow_pos[10][10];
char dog_pos[10][10];
int l = 0;
int sockfd, portno, n;
int s1 = 1;
int dummy = 1;
int dummy1 = 0;
struct sockaddr_in serv_addr;
struct hostent *server;
int animals;

void *thread_pivot(void* x)
{
  stringstream stream1;
  stream1 << "avconv"
    << " " // don't forget a space between the path and the arguments
    << "-i"
    << " "
    << "rtsp://192.168.240.1:554/live"
    << " "
    << "-q:v"
    << " "
    << "2"
    << " -vf fps=1/2 -update 1 /home/pi/visionex_1/improved/out.jpg | tee -a pivotout.txt";

    system(stream1.str().c_str());
}

void *run_all(void* x)
{
FILE *fp;
char path[1035];
if(x==0)
	fp = popen("python tem_threading.py test.jpg", "r");
else
	fp = popen("python tem1.py test.jpg", "r");
if (fp == NULL) {
    printf("Failed to run command\n" );
    exit(1);
}

while (fgets(path, sizeof(path)-1, fp) != NULL) {
printf("%s", path);
}
fgets(path, sizeof(path)-1, fp);


char* token;
token = strtok(path, ",");

string info[100];
int count =0;
int ind = 0;
while(token!=NULL)
{
	printf("%s\n",token);
	if(count == 0)
	{
	  no_faces = atoi(token);
	}
	if(count == 1)
	{
		if(!strcmp(token,"cow"))
		{
			cout<<"in string compare cow"<<endl;
			cows = 1;
			animals = 1;
		}
		else if(!strcmp(token,"dog"))
		{
			dogs = 1;
			animals = 1;
		}
		else
		{
			cows = 0;
			dogs = 0;
			animals = 0;
		}
	}
	if(count>=2)
	{
		cout<<"in count 2"<<endl;
		//if(token == "0")
		//{
		//	cout<<"in if token"<<endl;
		//	strcpy(signboard,"False");
		
		//}
		if(!strcmp(token,"False"))
		{
			strcpy(signboard,token);	
		}
		else
		{
			strcpy(signboard,"True");
			strcpy(sbdtext[ind],token);
			ind++;
		}

	}
info[count] = token;
count++;
token = strtok(NULL,",");
}
sbdcount = ind;
//no_faces = atoi(info[0]);
cout<<"No of faces detected are "<<no_faces<<endl;
//cout<<info[0]<<endl;

}


   int str2uuid( const char *uuid_str, uuid_t *uuid ) 
   {
   	uint32_t uuid_int[4];
   	char *endptr;

   	if( strlen( uuid_str ) == 36 ) {
        // Parse uuid128 standard format: 12345678-9012-3456-7890-123456789012
   		char buf[9] = { 0 };

   		if( uuid_str[8] != '-' && uuid_str[13] != '-' &&
   			uuid_str[18] != '-'  && uuid_str[23] != '-' ) {
   			return 0;
   	}
        // first 8-bytes
   	strncpy(buf, uuid_str, 8);
   	uuid_int[0] = htonl( strtoul( buf, &endptr, 16 ) );
   	if( endptr != buf + 8 ) return 0;

        // second 8-bytes
   	strncpy(buf, uuid_str+9, 4);
   	strncpy(buf+4, uuid_str+14, 4);
   	uuid_int[1] = htonl( strtoul( buf, &endptr, 16 ) );
   	if( endptr != buf + 8 ) return 0;

        // third 8-bytes
   	strncpy(buf, uuid_str+19, 4);
   	strncpy(buf+4, uuid_str+24, 4);
   	uuid_int[2] = htonl( strtoul( buf, &endptr, 16 ) );
   	if( endptr != buf + 8 ) return 0;

        // fourth 8-bytes
   	strncpy(buf, uuid_str+28, 8);
   	uuid_int[3] = htonl( strtoul( buf, &endptr, 16 ) );
   	if( endptr != buf + 8 ) return 0;

   	if( uuid != NULL ) sdp_uuid128_create( uuid, uuid_int );
   } else if ( strlen( uuid_str ) == 8 ) {
        // 32-bit reserved UUID
   	uint32_t i = strtoul( uuid_str, &endptr, 16 );
   	if( endptr != uuid_str + 8 ) return 0;
   	if( uuid != NULL ) sdp_uuid32_create( uuid, i );
   } else if( strlen( uuid_str ) == 4 ) {
        // 16-bit reserved UUID
   	int i = strtol( uuid_str, &endptr, 16 );
   	if( endptr != uuid_str + 4 ) return 0;
   	if( uuid != NULL ) sdp_uuid16_create( uuid, i );
   } else {
   	return 0;
   }

   return 1;
}

char* itoa(int a)
{
	stringstream b;
	b<<a;
	string temp_str = b.str();
	return (char*)temp_str.c_str();
}

char* ftoa(float a)
{
	stringstream b;
	b<<a;
	string temp_str = b.str();
	return (char*)temp_str.c_str();
}

int main(int argc, char *argv[]) {

	FILE *ft = fopen("file.txt", "w");
	if (ft == NULL)
	{
    	printf("Error opening file!\n");
    	exit(1);
	}
	pthread_t threads[2];
    //Zed
	printf("Before while\n");
//	if(pthread_create(&threads[1], NULL, thread_pivot, &dummy)) {
//
//		fprintf(stderr, "Error creating thread\n");
//		return 1;
//
//	}
	 //stringstream stream1;
     //stream1 << "python /home/pi/auto_vis/improved/camera.py 2> /home/pi/cam.txt";
	int i, j, err, sock, dev_id = -1;
	struct hci_dev_info dev_info;
	inquiry_info *info = NULL;
	int num_rsp, length, flags;
	bdaddr_t ba;
	char addr[19] = { 0 };
	char name[248] = { 0 };
	uuid_t uuid = { 0 };
    //Change this to your apps UUID
	char *uuid_str="446118f0-8b1e-11e2-9e96-0800200c9a66";
	char dest[18] = "78:02:F8:82:44:72";
	uint32_t range = 0x0000ffff;
	sdp_list_t *response_list = NULL, *search_list, *attrid_list;
	int s, loco_channel = -1, status;
	struct sockaddr_rc loc_addr = { 0 };

	(void) signal(SIGINT, SIG_DFL);

	dev_id = hci_get_route(NULL);
	if (dev_id < 0) {
		perror("No Bluetooth Adapter Available");
		exit(1);
	}

	if (hci_devinfo(dev_id, &dev_info) < 0) {
		perror("Can't get device info");
		exit(1);
	}



	sock = hci_open_dev( dev_id );
	if (sock < 0) {
		perror("HCI device open failed");
		free(info);
		exit(1);
	}


	if( !str2uuid( uuid_str, &uuid ) ) {
		perror("Invalid UUID");
		free(info);
		exit(1);
	}

	do {
		printf("Scanning ...\n");
		info = NULL;
		num_rsp = 0;
		flags = 0;
        length = 8; /* ~10 seconds */
		num_rsp = hci_inquiry(dev_id, length, num_rsp, NULL, &info, flags);
		if (num_rsp < 0) {
			perror("Inquiry failed");
			exit(1);
		}

		printf("No of resp %d\n",num_rsp);

		for (i = 0; i < num_rsp; i++) {
			sdp_session_t *session;
			int retries;
			int foundit, responses;
			ba2str(&(info+i)->bdaddr, addr);
			memset(name, 0, sizeof(name));
			if (hci_read_remote_name(sock, &(info+i)->bdaddr, sizeof(name), 
				name, 0) < 0)
				strcpy(name, "[unknown]");
			printf("Found %s  %s, searching for the the desired service on it now\n", addr, name);
            // connect to the SDP server running on the remote machine
			sdpconnect:
			session = 0; retries = 0;
			while(!session) {
				bdaddr_t* temp = &(info+i)->bdaddr;

				bdaddr_t* temp1 = new bdaddr_t;
				temp1->b[0] = 0;
				temp1->b[1] = 0;
				temp1->b[2] = 0;
				temp1->b[3] = 0;
				temp1->b[4] = 0;
				temp1->b[5] = 0;
                //const bdaddr_t* tmp = {0};
                //bacpy(&tmp, BDADDR_ANY);
				session = sdp_connect(temp1, temp, SDP_RETRY_IF_BUSY );
				if(session) break;
				if(errno == EALREADY && retries < 5) {
					perror("Retrying");
					retries++;
					sleep(1);
					continue;
				}
				break;
			}
			if ( session == NULL ) {
				perror("Can't open session with the device");
				free(info);
				continue;
			}
			search_list = sdp_list_append( 0, &uuid );
			attrid_list = sdp_list_append( 0, &range );
			err = 0;
			err = sdp_service_search_attr_req( session, search_list, SDP_ATTR_REQ_RANGE, attrid_list, &response_list);
			sdp_list_t *r = response_list;
			sdp_record_t *rec;
            // go through each of the service records
			foundit = 0;
			responses = 0;
			for (; r; r = r->next ) {
				responses++;
				rec = (sdp_record_t*) r->data;
				sdp_list_t *proto_list;

                    // get a list of the protocol sequences
				if( sdp_get_access_protos( rec, &proto_list ) == 0 ) {
					sdp_list_t *p = proto_list;

                        // go through each protocol sequence
					for( ; p ; p = p->next ) {
						sdp_list_t *pds = (sdp_list_t*)p->data;

                                // go through each protocol list of the protocol sequence
						for( ; pds ; pds = pds->next ) {

                                        // check the protocol attributes
							sdp_data_t *d = (sdp_data_t*)pds->data;
							int proto = 0;
							for( ; d; d = d->next ) {
								switch( d->dtd ) { 
									case SDP_UUID16:
									case SDP_UUID32:
									case SDP_UUID128:
									proto = sdp_uuid_to_proto( &d->val.uuid );
									break;
									case SDP_UINT8:
									if( proto == RFCOMM_UUID ) {
										printf("rfcomm channel: %d\n",d->val.int8);
										loco_channel = d->val.int8;
										foundit = 1;
									}
									break;
								}
							}
						}
						sdp_list_free( (sdp_list_t*)p->data, 0 );
					}
					sdp_list_free( proto_list, 0 );

				}
				if (loco_channel > 0)
					break;

			}
			printf("No of Responses %d\n", responses);
			if ( loco_channel > 0 && foundit == 1 ) {
				printf("Found service on this device, now gonna blast it with dummy data\n");
				s = socket(AF_BLUETOOTH, SOCK_STREAM, BTPROTO_RFCOMM);
				loc_addr.rc_family = AF_BLUETOOTH;
				loc_addr.rc_channel = loco_channel;
				loc_addr.rc_bdaddr = *(&(info+i)->bdaddr);
				str2ba( dest, &loc_addr.rc_bdaddr );
				status = connect(s, (struct sockaddr *)&loc_addr, sizeof(loc_addr));
				printf("before if\n");
				if( status < 0 ) {
					perror("uh oh");
				}
				else
				{
                    /*char** text = (char **)malloc(3*sizeof(char*));
                        int kk = 0;
                        for(kk = 0;kk<3;kk++)
                        {
                        text[kk] = (char *)malloc(1000*sizeof(char));
                        }
                        text[0] = "{\"signBoardString\": {\"isSignBoardDetected\": \"True\"}, \"textureString\": {\"pothole\": \"False\", \"texture\": [[\"1\", \"0\", \"1\"], [\"1\", \"0\", \"1\"]]}, \"positionString\": {\"pos_x\": 1.2314, \"pos_y\": 2.5426, \"pos_z\": 0.1243}, \"faceDetectionString\": {\"noOfFaces\": \"2\", \"nameArray\":[\"Anupam\", \"Anupam\"]}}";
                        text[1] = "{\"signBoardString\": {\"isSignBoardDetected\": \"False\"}, \"textureString\": {\"pothole\": \"True\", \"texture\": [[\"1\", \"0\", \"1\"], [\"0\", \"0\", \"1\"]]}, \"positionString\": {\"pos_x\": 1.2314, \"pos_y\": 2.5426, \"pos_z\": 0.1243}, \"faceDetectionString\": {\"noOfFaces\": \"2\", \"nameArray\":[\"Anupam\", \"Anupam\"]}}";
                        text[2] = "{\"signBoardString\": {\"isSignBoardDetected\": \"False\"}, \"textureString\": {\"pothole\": \"False\", \"texture\": [[\"0\", \"0\", \"1\"], [\"0\", \"0\", \"1\"]]}, \"positionString\": {\"pos_x\": 1.2314, \"pos_y\": 2.5426, \"pos_z\": 0.1243}, \"faceDetectionString\": {\"noOfFaces\": \"1\", \"nameArray\":[\"Anupam\"]}}";
                     */

					int ii = 0;
					char bbuffer[256];
					char pi , overall, face_recog;
					//int dummy = 1;
                    //Zed
                    // VideoCapture cap;
                    // if(cap.open(0))
                    // {
                    // printf("%s\n","Camera works!" );
                    // }

					Mat frame;

                    //char buffer[256];
					
					
					Mat temp;
					int counter = 0;
					int iter = 0;
					while(1)
					{
						printf("Inside while\n");
						bzero(bbuffer,256);
						if(global_on == 1)
						{
                        //cap >> frame;
							clock_t t;
							t = clock();
							//Mat temp,frame;
							temp = imread("out.jpg");
							printf("after imread\n");
							string name = "img";
							string suffix;
							stringstream tempp1;
							
							string name1 = "data";
							tempp1 << counter;
							suffix = tempp1.str();
							
							name = name + suffix + ".jpg";
								
							//frame = temp(Rect (102,0,640,480));
							imwrite("test.jpg",temp);
							printf("after imwrite\n");
							//imwrite("test.jpg",frame);
                            imwrite(name,temp);
                            counter = counter + 1;
                            if(counter==200)
                            {
                            	counter = 0;
                            }
                            //resize(frame,frame,Size(640,480)); //resize to 640x480
                            //frame = imread("5.jpg", CV_LOAD_IMAGE_COLOR);
                            imwrite("frame.jpg",frame);
                            if(iter==0)
                            {
                            	if(pthread_create(&threads[0], NULL, run_all, &dummy1)) {

	                            	fprintf(stderr, "Error creating thread\n");
	                            	return 1;

	                            }
	                            if(pthread_join(threads[0], NULL)) {

	                            	fprintf(stderr, "Error joining thread\n");

	                            }
                            }
                            else
                            {
	                            if(pthread_create(&threads[0], NULL, run_all, &dummy)) {

	                            	fprintf(stderr, "Error creating thread\n");
	                            	return 1;

	                            }
	                            if(pthread_join(threads[0], NULL)) {

	                            	fprintf(stderr, "Error joining thread\n");

	                            }
                        	}
                            iter++;
                            double time_taken = ((double)t)/CLOCKS_PER_SEC; // in seconds
    						printf("fun() took %f seconds to execute \n", time_taken);
							fprintf(ft,"fun() took %f seconds to execute \n", time_taken);	
                            int i,j;
                            printf("The number of faces are: %d\n",no_faces);
                           
                            printf("Signboard detected: %s\n",signboard);
                           //printf("Animal detected:");

                            char* text = (char*)malloc(10000*sizeof(char));
                        //string text;
                            strcpy(text,"{\"signBoardString\": {\"isSignBoardDetected\": \"");
                            //printf("%s",text);
                            //printf("Here\n");
                            strcat(text, (char *)signboard);
                            //printf("Here2\n");
                            strcat(text,"\", \"sbdCount\": \""	);
                            strcat(text,itoa(sbdcount));
                            strcat(text,"\", \"sbdArray\": [\"");
                        	for(int x = 0;x<sbdcount;x++)
                            {
                            	if(x != sbdcount -1)
                            	{
			//	strcat(text,"\"");
                            		strcat(text,sbdtext[x]);
                            		strcat(text,"\", \"");
                            	}
                            	else
                            	{
                            		strcat(text,sbdtext[x]);                               
                            	//strcat(text,"\"");
                            	}
                            }	
                            strcat(text,"\"]}, \"textureString\": {\"pothole\": \"False\", \"texture\": [[\"");
                            texture[0][0] = 0;
                            strcat(text,itoa(texture[0][0]));
                            
                            strcat(text,"\", \"");
                            texture[0][2] = 0;
                            strcat(text,itoa(texture[0][2]));
                            texture[2][0] = 0;
                            strcat(text,"\", \"");
                            strcat(text,itoa(texture[2][0]));
                            strcat(text,"\"],[\"");
                            texture[2][2] = 0;
                            strcat(text,itoa(texture[2][2]));
                            strcat(text,"\", \"");
                            texture[4][0] = 0;
                            strcat(text,itoa(texture[4][0]));
                            strcat(text,"\", \"");
                            texture[4][2] = 0;
                            strcat(text,itoa(texture[4][2]));

                            strcat(text,"\"]]}, \"positionString\": { \"pos_x\": ");
                            strcat(text,"1.1");
                            strcat(text,", \"pos_y\": ");
                            strcat(text,"1.1");
                            strcat(text,", \"pos_z\": ");
                            strcat(text,"1.1");
                            strcat(text,"}, \"faceDetectionString\": {\"noOfFaces\": \"");
                            strcat(text,itoa(no_faces));
                            int iter;
                            if(s1==1)
                            {
                            	strcat(text,"\", \"nameArray\": [\"");
                            	
                            	for(iter = 0;iter<no_faces;iter++)
	                            {
	                            	if(iter != no_faces -1)
	                            	{
				//	strcat(text,"\"");
	                            		strcat(text,"none");
	                            		strcat(text,"\", \"");
	                            	}
	                            	else
	                            	{
	                            		strcat(text,"none");                               
	                            	//strcat(text,"\"");
	                            	}

                            	}	
                            }
                            else
                            {
                            	strcat(text,"\", \"nameArray\": [\"");	
                            }	
                            
                            strcat(text,"\"]}, \"animalDetectionString\": {\"noOfAnimals\": ");
                            strcat(text,itoa(animals));

                            strcat(text,", \"animalArray\": [\"");
                            if(cows==1)
                            {
	                            cout<<"in cows = 1"<<endl;
	                            for(iter = 0;iter<cows;iter++)
	                            {

	                            	if(iter != cows - 1)
	                            	{
	                            		strcat(text, "Cow");
	                            		strcat(text,"\", \"");
	                            	}
	                            	else
	                            	{
	                            		strcat(text, "Cow");
	                            	}

	                            }
	                            strcat(text,"\"], \"directionArray\": [\"");
	                            for(iter = 0;iter<cows;iter++)
	                            {
	                            	if(iter != cows-1)
	                            	{
	                            		strcat(text,"nearby");
	                            		strcat(text,"\", \"");
	                            	}
	                            	else
	                            	{
	                            		strcat(text,"nearby");

	                            	}
	                            }
	                            strcat(text,"\"] }}");
	                        }
                            else if(dogs==1){
                            	for(iter = 0;iter<dogs;iter++)
                            	{

                            		if(iter != dogs - 1)
                            		{
                            			strcat(text, "Dog");
                            			strcat(text,"\", \"");
                            		}
                            		else
                            		{
                            			strcat(text, "Dog");
                            		}

                            	}
                            	strcat(text,"\"], \"directionArray\": [\"");
                            	for(iter = 0;iter<dogs;iter++)
                            	{
                            		if(iter != dogs-1)
                            		{
                            			strcat(text,"nearby");
                            			strcat(text,"\", \"");
                            		}
                            		else
                            		{
                            			strcat(text,"nearby");

                            		}
                            	}
                            	strcat(text,"\"] }}");
                            }
                            else
                            {
                            	strcat(text,"\"], \"directionArray\": [\"");
                            	strcat(text,"\"] }}");
                            }
                            //printf("before sending\n");
                            printf("%s",text);
                            name1 = name1 + suffix + ".txt";
                            
                            const char* dem = name1.c_str();

                            FILE *f22 = fopen(dem, "w");
                            if (f22 == NULL)
                            {
                                printf("Error opening file!\n");
                                exit(1);
                            }
                            fprintf(f22, "Some text: %s\n", text);
                            fclose(f22);
                            printf("In on loop\n");
                            status = write(s, text, strlen(text));
                            //printf ("Wrote %d bytes\n", status);
                            status = read(s,bbuffer,3);
                            
                            printf("Buffer %s\n",bbuffer);
                            
                            overall = bbuffer[0];
                            face_recog = bbuffer[1];
                            pi = bbuffer[2];
                            
                            if(face_recog=='f')
                            {
                            	s1=0;
                            }
                            else
                            {
                            	s1=1;
                            }
                            if(pi=='f')
                            {
                            	stringstream stream;
								stream << "poweroff";
   								system(stream.str().c_str());
                            }	
                            printf("%c\n",bbuffer[0]);
                            printf("%c\n",bbuffer[1]);
                            printf("%c\n",bbuffer[2]);
                            
                            if(overall=='f')
                            {
                            	global_on = 0;
                            }
                        //sleep(3);
                            
                        }
                        else
                        {
                        	
                        	printf("In off loop\n");
                        //status = write(s, "*", 1);
                        //printf ("Wrote %d bytes\n", status);
                        	status = read(s,bbuffer,3);
                        	overall = bbuffer[0];
                        	printf("Buffer %s\n",bbuffer);
                        	if(pi=='f')
                            {
                            	stringstream stream;
								stream << "poweroff";
   								system(stream.str().c_str());	
                            }	
                        	if(face_recog=='f')
                            {
                            	s1=0;
                            }
                            else
                            {
                            	s1=1;
                            }	
                        	if(overall=='f')
                        	{
                        		global_on = 0;
                        	}
                        	else
                        	{
                        		global_on = 1;
                        	}
                        }
                    }


                }

                close(s);
                sdp_record_free( rec );
            }

            sdp_close(session);
            if (loco_channel > 0) {
            	goto sdpconnect;
                //break;
            }
        }
    } while (1);

    printf("Exiting...\n");
}




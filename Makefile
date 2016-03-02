CC=g++
CFLAGS=-g -c -w
PKGCONFIGFLAG=`pkg-config --cflags --libs opencv`

default: video_to_images

video_to_images: video_to_images.o
	$(CC) video_to_images.o -o video_to_images $(PKGCONFIGFLAG)

video_to_images.o: video_to_images.cpp
	$(CC) $(CFLAGS) video_to_images.cpp

clean:
	rm *.o video_to_images




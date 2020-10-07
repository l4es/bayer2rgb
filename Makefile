CC = gcc
CFLAGS = -Wall -Wno-unused-function

CXXFLAGS += `pkg-config opencv --cflags`

LDFLAGS += `pkg-config opencv --libs`

TARGET = bayer2rgb


$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) $(CXXFLAGS) $(TARGET).c -o $(TARGET) $(LDFLAGS)
	
	
clean:
	rm -f $(TARGET)


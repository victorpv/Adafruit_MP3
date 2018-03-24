/*
 This example generates a square wave based tone at a specified frequency
 and sample rate. Then outputs the data using the I2S interface to a
 MAX08357 I2S Amp Breakout board.
 Circuit:
 * Arduino/Genuino Zero, MKRZero or MKR1000 board
 * MAX08357:
   * GND connected GND
   * VIN connected 5V
   * LRC connected to pin 0 (Zero) or pin 3 (MKR1000, MKRZero)
   * BCLK connected to pin 1 (Zero) or pin 2 (MKR1000, MKRZero)
   * DIN connected to pin 9 (Zero) or pin A6 (MKR1000, MKRZero)
 created 17 November 2016
 by Sandeep Mistry
 */

#include <SdioF1.h> //#include <SdFat.h>
#include "./I2S.h"
I2SClass I2S (SPI2);

#include "./Adafruit_MP3/src/Adafruit_MP3.h"

#define VOLUME_MAX 1023

const char *filename = "test.mp3";
SdFatSdio SD;
File dataFile;
Adafruit_MP3 player;




volatile uint16_t buffersize16;
volatile int16_t * bufferptr;
volatile bool getNextFrame;

void i2sCallback() {
    volatile uint16_t offset;
    switch(I2S.event){
    case DMA_TRANSFER_COMPLETE:
        //Serial.println(micros());
        offset = buffersize16/2;
        break;
    case DMA_TRANSFER_HALF_COMPLETE:
        offset = 0;
        getNextFrame = true;
        break;
    default:
        return;
    }
    //fill the corresponding half buffer
    player.getSamples(&bufferptr[offset], buffersize16/2);
}

void rateCallback(uint32_t rate) {
    I2S.setSampleRate(rate);
}

int getMoreData(uint8_t *writeHere, int thisManyBytes){
  int bytesRead = 0;
  if (thisManyBytes > 512) thisManyBytes = 512*(thisManyBytes/512); // read whole sectors at once
  //int toRead = min(thisManyBytes, 1024); //limit the number of bytes we can read at a time so the file isn't interrupted
  if(dataFile.available()){
    bytesRead += dataFile.read(writeHere, thisManyBytes);
  }
  return bytesRead;
}

// the setup routine runs once when you press reset:
void setup() {

  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  if (!I2S.begin(I2S_LEFT_JUSTIFIED_MODE, MP3_SAMPLE_RATE_DEFAULT, 16)) {
      Serial.println("Failed to initialize I2S!");
      while (1); // do nothing
    }
  buffersize16 = I2S.bufferSize()/2; //This function returns size in bytes, /2 for int16_t
  bufferptr = (int16_t *)I2S.bufferPtr();
  I2S.onTransmit(i2sCallback);


  Serial.println("Native MP3 decoding!");
  Serial.print("Initializing SD card...");

  // see if the card is present and can be initialized:
#if defined(__MK66FX1M0__) || defined(__MK20DX256__)  // teensy 3.6 or 3.1/2
  analogWriteResolution(12);
  while (!SD.begin(chipSelect)) {
#else
  while (!SD.begin()) {
#endif
    Serial.println("Card failed, or not present");
    delay(2000);
  }
  Serial.println("card initialized.");

  dataFile = SD.open(filename);
  if(!dataFile){
    Serial.println("could not open file!");
    while(1);
  }

  player.begin();

  //do this when there are samples ready
  //player.setSampleReadyCallback(writeDacs);

  //do this when more data is required
  player.setBufferCallback(getMoreData);
  player.setChangeRateCallback(rateCallback);

  player.play();
  player.tick();
  I2S.start(true);
  Serial.println("Playing!");
}

// the loop routine runs over and over again forever:
void loop() {
  player.tick();
}


























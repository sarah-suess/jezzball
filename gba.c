#include "gba.h"
#include <stdio.h>
#include "font.h"

// Pointer to the start of video memory
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

// Draws a rectangle in mode 3
void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(x + j, y + i, color);
        }
    }
}

// Fills the screen in mode 3
void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

// Checks for collision between two rectangles
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2) {
    return y1 < y2 + height2 && y1 + height1 > y2 && x1 < x2 + width2 && x1 + width1 > x2;
}

// Waits until drawing pixel 0 of line 160
void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}

// draws a horizontal line
void drawHorizontalLine(int x, int y, int length, unsigned short color) {
    for(int i = 0; i < length; i++) {
        videoBuffer[OFFSET(x, y, 240)] = color;
        x = x + 1;
    }
    
}

// draws a heart
void drawHeart(int x, int y, unsigned short color) {
    drawHorizontalLine(x-2, y-2, 1, color);
    drawHorizontalLine(x+2, y-2, 1, color);
    drawHorizontalLine(x-3, y-1, 3, color);
    drawHorizontalLine(x+1, y-1, 3, color);
    drawRect(x-4,y,9,3,color);
    drawHorizontalLine(x-3,y+3,7, color);
    drawHorizontalLine(x-2,y+4,5,color);
    drawHorizontalLine(x-1,y+5,3,color);
    drawHorizontalLine(x,y+6,1,color);
}

// used to "write" characters on the screen
void drawChar(int x, int y, char ch, unsigned short color) {
    // TODO 6.0
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 8; j++) {
            if (fontdata[48*ch + i + 6*j]) {
                setPixel(x+i, y+j, color);
            }
        }
    }
}

// used to "write" strings on the screen
void drawString(int x, int y, char *str, unsigned short color) {
    // TODO 7.0
    while (*str) {
        drawChar(x, y, *str, color);
        str++; 
        x+=6;
        if (x > 240-6) {y+=8; x=0;}
    }
}
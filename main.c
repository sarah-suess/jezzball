#include <stdio.h>
#include "gba.h"
#include "print.h"
#include <stdbool.h>
#include "font.h"

void initialize();
void update();
void draw();
void reset();

unsigned short oldButtons;
unsigned short buttons;

bool playing;

int time, timestep;


// bounded player rectangle

int pX, pY, pWidth, pOldX, pOldY;
unsigned short pColor; 

// atom
int aX, aY, aWidth, aOldX, aOldY;
unsigned short aColor; 
bool left, right, up, down, drawing;

// boundary

int bX, bY, bWidth, bHeight, bOldX, bOldY;
unsigned short bColor; 

// used to check what side the new boundary lines are coming from
bool leftSide, rightSide, topSide, bottomSide;

int collisions;

bool winner, loser;


//50,0,140,1
// top border
int topX, topY, topWidth, topHeight;

// 50, 159, 140, 1
// bottom border
int boX, boY, boWidth, boHeight;

// 50, 0,1,160
//left border
int leftX, leftY, leftWidth, leftHeight;

// 190,0,1,160
//right border
int rightX, rightY, rightWidth, rightHeight;

// for when a new box is created

int boxX, boxY, boxWidth, boxHeight;

bool resize;


int main() {
    mgba_open();
	mgba_printf("Debugging Initialized");
	
	initialize();
 
	while (1) {
        oldButtons = buttons;
		buttons = REG_BUTTONS;
		update();
		waitForVBlank();
		draw();
        time++;
	}
}

// starts the game from the beginning
void initialize() {
	REG_DISPCTL = MODE(3) | BG2_ENABLE;

    oldButtons = 0;
	buttons = REG_BUTTONS;


    drawHeart(6,2,RED);
    drawHeart(6+11,2,RED);
    drawHeart(6+11+11,2,RED);

    boxX = 50;
    boxY = 0;
    boxWidth = 140;
    boxHeight = 159;
    drawRect(boxX,boxY,boxWidth,boxHeight,CREME);

    topX = 50;
    topY = 0;
    topWidth = 140; 
    topHeight = 1;

    boX = 50;
    boY = 159;
    boWidth = 140;
    boHeight = 1;

    leftX = 50;
    leftY = 0;
    leftWidth = 1;
    leftHeight = 160;

    rightX = 190;
    rightY = 0;
    rightWidth = 1;
    rightHeight = 160;

    drawRect(topX,topY,topWidth,topHeight,RED);
    drawRect(boX,boY,boWidth,boHeight,RED);
    drawRect(leftX,leftY,leftWidth,leftHeight,RED);
    drawRect(rightX,rightY,rightWidth,rightHeight,RED);

    pX = 50;
    pY = 30;
    pWidth = 1;
    pColor = GREEN;

    drawRect(pX, pY, pWidth, pWidth, pColor);

    aX = 120; 
    aY = 100; 
    aWidth = 2;
    aColor = MAGENTA;

    pOldY = pY;
	pOldX = pX;

    aOldX = aX;
    aOldY = aY;

    drawRect(aX, aY, aWidth, aWidth, aColor);

    playing = false;
    left = false;
    right = false;
    up = false;
    down = false;
    drawing = false;
    time = 0;

    bX = 0;
    bY = 0; 
    bWidth = 1; 
    bHeight = 1;
    bOldX = bX;
    bOldY = bY;
    bColor = pColor;

    leftSide = false;
    rightSide = false;
    topSide = false;
    bottomSide = false;
    resize = false;

    collisions = 0;
    timestep = 2;

    winner = false;
    loser = false;
}

// sets the game up again after each life lost
void reset() {
    pX = boxX;
    pY = boxY;
    pWidth = 1;
    pColor = GREEN;

    drawRect(pX, pY, pWidth, pWidth, pColor);

    aX = aX; 
    aY = aY; 
    aWidth = 2;
    aColor = MAGENTA;

    pOldY = pY;
	pOldX = pX;

    aOldX = aX;
    aOldY = aY;

    drawRect(aX, aY, aWidth, aWidth, aColor);

    playing = false;
    left = false;
    right = false;
    up = false;
    down = false;
    drawing = false;
    winner = false;

    time = 0;

    bX = 0;
    bY = 0; 
    bWidth = 1; 
    bHeight = 1;
    bOldX = bX;
    bOldY = bY;
    bColor = pColor;

    leftSide = false;
    rightSide = false;
    topSide = false;
    bottomSide = false;
    resize = false;
    loser = false;
}


// updates my variables
void update() {
    // stops game if you lose
    if (loser) {
        if (BUTTON_PRESSED(BUTTON_START)) {
            initialize();
        }
    }
    // stops game if you win
    if ((boxWidth * boxHeight) < 625) {
        winner = true;
        drawString(100,70,"You Win!!!",GREEN);
        if (BUTTON_PRESSED(BUTTON_START)) {
            winner = false;
            initialize();
        }
    }
    // used to start the game and to start moving the atom and bounded rectangle
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (playing == false) {
            playing = true;
        }

        if (left == false) {
            left = true;
        }

        if (up == false) {
            up = true;
        }
    }

    // runs when the games is playing and you have not won or lost. Also slows the time down by half.
    if (playing && ((time % timestep) == 0  && !winner && !loser)) {

        // will start drawing a line from the rightSide of the box and stop the small boxes movement
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if(pX == (boxX + boxWidth)) {
                if (pY < (boxHeight + boxY) && pY > boxY) {
                    drawing = true;
                    leftSide = true;
                    bWidth = 1;
                    bHeight = 1;
                    bX = pX;
                    bY = pY;
                }
            }
        }

        // will start drawing a line from the leftSide of the box and stop the small boxes movement
        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if(pX == boxX) {
                if (pY < (boxHeight + boxY) && pY > boxY) {
                    drawing = true;
                    rightSide = true;
                    bWidth = 1;
                    bHeight = 1;
                    bX = pX;
                    bY = pY;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_UP)) {
            if(pY == (boxHeight + boxY)) {
                if ((pX < (boxX + boxWidth)) && (pX > boxX)) {
                    drawing = true;
                    bottomSide = true;
                    bWidth = 1;
                    bHeight = 1;
                    bX = pX;
                    bY = pY;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_DOWN)) {
            if(pY == boxY) {
                if (pX < (boxX + boxWidth) && pX > boxX) {
                    drawing = true;
                    topSide = true;
                    bWidth = 1;
                    bHeight = 1;
                    bX = pX;
                    bY = pY;
                }
            }
        }

        // if a boundary line is not being redrawn update the boundary box
        if (!drawing) {
            // left side
            if (pX == boxX && (pY < (boxHeight + boxY)) && (pY > boxY)) {
                pY--;
            }

            // top left corner
            if (pX == boxX && pY == boxY) {
                pX++;
            }

            // top side
            if (pY == boxY && (pX < (boxX + boxWidth)) && (pX > boxX)) {
                pX++;
            }


            // top right corner
            if (pY == boxY && (pX == (boxX + boxWidth))) {
                pY++;
            }

            // right side
            if ((pX == (boxX + boxWidth)) && (pY < (boxHeight + boxY)) && (pY > boxY)) {
                pY++;
            }


            // bottom right corner
            if ((pY == (boxHeight + boxY))  && (pX == (boxX + boxWidth))) {
                mgba_printf("%d,%d, pY == (boxHeight + boxY), %d", boxHeight, boxY, (boxHeight + boxY));
                pX--;
            }


            // bottom row
            if ((pY == (boxHeight + boxY)) && (pX < (boxX + boxWidth)) && (pX > boxX)) {
                pX--;
            }

            // bottom left corner
            if (pX == boxX && (pY == (boxHeight + boxY))) {
                pY--;
            }
        }

        // draws the new borders
        if (drawing) {
            if (rightSide) {
                drawRect(bX,bY,bWidth,bHeight,BLUE);
                bWidth++;
                if (collision(rightX,rightY,rightWidth,rightHeight, bX, bY, bWidth, bHeight)) {
                    drawing = false;
                    rightSide = false;

                    if (aY < bY) {
                        // draws on the bottom
                        mgba_printf("bottom right");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(bX, bY+1, 141, 160-(bY+1), BLACK);
                        boxHeight = bY - boxY;

                        boX = bX;
                        boY = bY;
                        boWidth = bWidth;
                        boHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    } else if (aY > bY) {
                        // draws the black rectangle on top
                        mgba_printf("top right");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(50,0,141, bY, BLACK);

                        boxHeight = boxHeight - (bY - boxY);
                        boxY = bY;
                        mgba_printf("%d", boxHeight);


                        topX = bX;
                        topY = bY;
                        topWidth = bWidth; 
                        topHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    }
                }
            }
            if (topSide) {
                drawRect(bX, bY, bWidth, bHeight, BLUE);
                bY++;
                bHeight++;
                if (collision(boX,boY,boWidth,boHeight, bX, bY, bWidth, bHeight)) {
                    drawing = false;
                    topSide = false;
                    //drawRect(bX, bY, bWidth, bHeight, RED);

                    if (aX > bX) {
                        // draws rectangle on left side
                        mgba_printf("left top");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(boxX, boxY, (bX - boxX), boxHeight+1, BLACK);

                        boxWidth = boxWidth - (bX-boxX);
                        boxX = bX;

                        leftX = bX;
                        leftWidth = bWidth;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    } else {
                        // draws on right side
                        mgba_printf("right top");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(bX+1, 0, ((boxWidth) - (bX-boxX)), 160, BLACK);
                        
                        boxWidth = (boxWidth - ((boxWidth) - (bX-boxX)));

                        rightX = bX;
                        rightWidth = bWidth;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    }
                }
            }
            if (bottomSide) {
                drawRect(bX, bY, bWidth, bHeight, BLUE);
                bY--;
                bHeight++;
                if (collision(topX,topY,topWidth,topHeight, bX, bY, bWidth, bHeight)) {
                    drawing = false;
                    bottomSide = false;
                    //drawRect(bX, bY, bWidth, bHeight, RED);

                    if (aX > bX) {
                        // draws rectangle on left side
                        mgba_printf("left bottom");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(boxX, boxY, (bX - boxX), 160, BLACK);

                        boxWidth = boxWidth - (bX-boxX);
                        boxX = bX;

                        leftX = bX;
                        leftY = bY;
                        leftWidth = bWidth;
                        leftHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    } else {
                        // draws on right side
                        mgba_printf("right bottom");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(bX+1, 0, (boxWidth - (bX - boxX)), 160, BLACK);
                        boxWidth = bX - boxX;

                        rightX = bX;
                        rightY = bY;
                        rightWidth = bWidth;
                        rightHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    }
                }
            }
            if (leftSide) {
                drawRect(bX, bY, bWidth, bHeight, BLUE);
                bX--;
                bWidth++;
                if (collision(leftX,leftY,leftWidth,leftHeight, bX, bY, bWidth, bHeight)) {
                    drawing = false;
                    leftSide = false;
                    //drawRect(bX, bY, bWidth, bHeight, RED);

                    if (aY < bY) {
                        // draws on the bottom
                        mgba_printf("bottom left");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(bX, bY+1, 141, 160-(bY+1), BLACK);
                        boxHeight = bY - boxY;


                        boX = bX;
                        boY = bY;
                        boWidth = bWidth;
                        boHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    } else if (aY > bY) {
                        // draws the black rectangle on top
                        mgba_printf("top left");
                        mgba_printf("%d, bX", bX);
                        mgba_printf("%d", bY);
                        mgba_printf("%d", bWidth);
                        mgba_printf("%d, bHeight", bHeight);

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                        drawRect(50,0,141, bY, BLACK);

                        boxHeight = boxHeight - (bY - boxY);
                        boxY = bY;

                        topX = bX;
                        topY = bY;
                        topWidth = bWidth; 
                        topHeight = bHeight;

                        if (resize == false) {
                            resize = true;
                        }

                        mgba_printf("%d, boxX", boxX);
                        mgba_printf("%d", boxY);
                        mgba_printf("%d, boxWidth", boxWidth);
                        mgba_printf("%d", boxHeight);
                        mgba_printf("%d, %d", pX, pY);
                    }
                }
            }

            // checks if the atom collides with boundary lines while they are being redrawn
            // has a seperate check for when the line is coming from the top bc it is a special case
            // if a collision happens it draws over the line 
            if (topSide) {
                if (collision(aX,aY,aWidth,aWidth, bX, boxY, bWidth, bHeight)) {
                    if (collisions == 2) {
                        loser = true;
                        drawString(100,70,"You Lost.",RED);
                    } else {
                        collisions++;
                        mgba_printf("%d,collisions",collisions);
                        if (collisions == 1) {
                            drawRect(bX, boxY, bWidth, boxHeight, CREME);
                            drawRect(pX, pY, 1, 1, RED);
                            drawHeart(6+11+11,2,BLACK);
                        } else if (collisions == 2) {
                            drawRect(bX, boxY, bWidth, boxHeight, CREME);
                            drawHeart(6+11,2,BLACK);
                            drawRect(pX, pY, 1, 1, RED);
                        }
                        reset();
                    }
                }
            }
            if (collision(aX,aY,aWidth,aWidth, bX, bY, bWidth, bHeight)) {
                if (collisions == 2) {
                    loser = true;
                    drawString(100,70,"You Lost.",RED);
                } else {
                    collisions++;
                    mgba_printf("%d,collisions - not top",collisions);
                    if (collisions == 1) {
                        if (topSide) {
                            drawRect(bX, boxY, bWidth, boxHeight, CREME);
                            drawRect(pX, pY, 1, 1, RED);
                            drawHeart(6+11+11,2,BLACK);
                        } else {
                            drawRect(bX, bY, bWidth, bHeight, CREME);
                            drawRect(pX, pY, 1, 1, RED);
                            drawHeart(6+11+11,2,BLACK);
                        }
                    } else if (collisions == 2) {
                        if (topSide) {
                            drawRect(bX, boxY, bWidth, boxHeight, CREME);
                            drawRect(pX, pY, 1, 1, RED);
                            drawHeart(6+11+11,2,BLACK);
                        } else {
                            drawRect(bX, bY, bWidth, bHeight, CREME);
                            drawRect(pX, pY, 1, 1, RED);
                            drawHeart(6+11,2,BLACK);
                        }
                    }
                    reset();
                }
            }
        }

        // changes the atoms movement if it collides with the left side
        if (collision((leftX + 1),leftY,leftWidth,leftHeight, aX, aY, aWidth, aWidth)) {
            left = false;
            right = true;
        }

        // changes the atoms movement if it collides with the top
        if (collision(topX,(topY + 1),topWidth,topHeight, aX, aY, aWidth, aWidth)) {
            up = false;
            down = true;
        }

        // changes the atoms movement if it collides with the right side
        if (collision((rightX-1),rightY,rightWidth,rightHeight, aX, aY, aWidth, aWidth)) {
            left = true;
            right = false;
        }

        // changes the atoms movement if it collides with the bottom
        if (collision(boX,(boY-1),boWidth,boHeight, aX, aY, aWidth, aWidth)) {
            up = true;
            down = false;
        }

        // updates the atoms X value if it is moving left
        if (left) {
            aX--;
        }

        // updates the atoms X value if it is moving right
        if (right) {
            aX++;
        }

        // updates the atoms Y value if it is moving up
        if (up) {
            aY--;
        }

        // updates the atoms Y value if it is moving down
        if (down) {
            aY++;
        }
    }
}

void draw() {

    // covering old bounded player rectangle and the atom
    drawRect(pOldX, pOldY, pWidth, pWidth, RED);
    drawRect(aOldX, aOldY, aWidth, aWidth, CREME);
	
    // drawing the new rectangle
    drawRect(pX, pY, pWidth, pWidth, pColor);

    // drawing the new atom
    drawRect(aX, aY, aWidth, aWidth, aColor);

    // updating old variables
    pOldY = pY;
	pOldX = pX;

    aOldX = aX;
    aOldY = aY;
}

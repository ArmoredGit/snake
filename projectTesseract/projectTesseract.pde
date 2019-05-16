boolean win = false;
PImage button;
PImage pressButton;
PImage pressButtonWBlock;
PImage Block;
PImage player;
PImage evenFloor;
PImage evenWall;
PImage oddFloor;
PImage oddWall;
PImage levelButton1;
PImage levelButton2;
PImage levelButton3;
PImage levelButton4;
PImage levelButton5;
PImage levelButton6;
PImage levelButton7;
PImage levelButton8;
PImage levelButton9;
int playState = 0;
String view;
library li = new library();
manager p = new manager(0,0,1);
eventTiles e = new eventTiles();
void setup(){
  size(1000,1000);
  textSize(50);
  player = loadImage("character.png");
  evenFloor = loadImage("evenFloor.png");
  button = loadImage("unPressedButton.png");
  evenWall = loadImage("evenWall.png");
  oddFloor = loadImage("oddFloor.png");
  oddWall = loadImage("oddWall.png");
  pressButton = loadImage("PressedButton.png");
  pressButtonWBlock = loadImage("PressedButtonWBlock.png");
  Block = loadImage("Block.png");
  levelButton1 = loadImage("level1.png");
  levelButton2 = loadImage("level2.png");
  levelButton3 = loadImage("level3.png");
  levelButton4 = loadImage("level4.png");
  levelButton5 = loadImage("level5.png");
  levelButton6 = loadImage("level6.png");
  levelButton7 = loadImage("level7.png");
  levelButton8 = loadImage("level8.png");
  levelButton9 = loadImage("level9.png");
}

void draw(){
  if(playState == 0){
    background(0);
    text("[ Press key to Play ]", width / 4, width / 2);
  }else if(playState == 1){
    background(0);
    p.drawGame();
    p.triggerEvents();
    fill(255);
    int[] pos = p.getCords();
    text("X: " + pos[0] + ", Y: " + pos[1] + ", Z: " + pos[2] + ", W: " + pos[3] + ", view is " + view, width / 11, width / 11);
  }
}

void keyPressed(){
  if(playState == 0){
    playState = 1;
  }else if(playState == 1){
    switch(keyCode){
      case 87:
        p.move(4);
        break;
      case 65:
        p.move(3);
        break;
      case 83:
        p.move(2);
        break;
      case 68:
        p.move(1);
        break;
      case 81:
        p.rotatePlane(-1);
        break;
      case 69:
        p.rotatePlane(1);
        break;
      case 82:
        p.restart();
        break;
      case 76:
        p.nextLevel();
        break;
    }
  }
}

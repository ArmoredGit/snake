boolean win = false;
PImage event1;
PImage player;
PImage evenFloor;
PImage evenWall;
PImage oddFloor;
PImage oddWall;
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
  event1 = loadImage("evenFloor.png");
  evenWall = loadImage("evenWall.png");
  oddFloor = loadImage("oddFloor.png");
  oddWall = loadImage("oddWall.png");
}

void draw(){
  if(playState == 0){
    background(0);
    text("[ Press key to Play ]", width / 4, width / 2);
  }else if(playState == 1){
    background(0);
    p.drawGame();
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
    }
  }
}

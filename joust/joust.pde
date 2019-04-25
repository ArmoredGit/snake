Knight P1;
Knight P2;
Level g;
boolean P1MovingRight = false;
boolean P2MovingRight = false;
boolean P1MovingLeft = false;
boolean P2MovingLeft = false;
void setup(){
  size(1000,1000);
  P1 = new Knight(50,50);
  P2 = new Knight(50,60);
  g = new Level();
}

void draw(){
  //draw background
  g.drawLevel();
  //draw foreground an characters
  P1.drawHero();
  P2.drawHero();
  //calc hitboxes
  //accelerate
  if(P1MovingRight)
    P1.addAccel(4,0);
  if(P1MovingLeft)
    P1.addAccel(-4,0);
  if(P2MovingRight)
    P2.addAccel(4,0);
  if(P2MovingLeft)
    P2.addAccel(-4,0);
  P1.accelerate();
  P2.accelerate();
}

void keyPressed(){
  switch(keyCode){
    case 65:
      P1.addAccel(-10,0);
      P1MovingLeft = true;
      break;
    case 83:
      P1.addAccel(10,0);
      P1MovingRight = true;
      break;
    case 70:
      P1.addAccel(0,16);
      P1.jump();
      break;
    case 72:
      P2.addAccel(-10,0);
      P2MovingLeft = true;
      break;
    case 74:
      P2.addAccel(10,0);
      P2MovingRight = true;
      break;
    case 76:
      P2.addAccel(0,16);
      P2.jump();
      break;
  }
}

void keyReleased(){
  switch(keyCode){
    case 65:
      P1MovingLeft = false;
      break;
    case 83:
      P1MovingRight = false;
      break;
    case 72:
      P2MovingLeft = false;
      break;
    case 74:
      P2MovingRight = false;
      break;
  }
}

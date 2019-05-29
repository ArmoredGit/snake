Knight P1;
Knight P2;
Knight P3;
Knight P4;
Level g;
boolean P1MovingRight = false;
boolean P2MovingRight = false;
boolean P1MovingLeft = false;
boolean P2MovingLeft = false;
int P1Kills;
int P2Kills;
boolean P3MovingRight = false;
boolean P4MovingRight = false;
boolean P3MovingLeft = false;
boolean P4MovingLeft = false;
int P3Kills;
int P4Kills;
void setup(){
  size(1000,1000);
  P1 = new Knight(350,50,0,255,0);
  P2 = new Knight(450,60,255,0,0);
  P3 = new Knight(250,50,0,0,255);
  P4 = new Knight(550,60,0,255,255);
  g = new Level();
  P1Kills = 0;
  P2Kills = 0;
  P3Kills = 0;
  P4Kills = 0;
}

void draw(){
  //draw background
  g.drawLevel();
  text("p1 : " + P1Kills,50,50);
  text("p2 : " + P2Kills,200,50);
  text("p3 : " + P3Kills,400,50);
  text("p4 : " + P4Kills,600,50);
  //draw foreground an characters
  P1.drawHero();
  P2.drawHero();
  P3.drawHero();
  P4.drawHero();
  
  if(P1.getY() > height + 100)
    P1 = new Knight(350,50,0,255,0);
  if(P2.getY() > height + 100)
    P2 = new Knight(350,50,255,0,0);
  if(P3.getY() > height + 100)
    P3 = new Knight(350,50,0,0,255);
  if(P4.getY() > height + 100)
    P4 = new Knight(350,50,0,255,255);
  
  //calc hitboxes
  if(P1.defHit(P3.attackHit())){
    P1 = new Knight(350,50,0,255,0);
    P3Kills++;
  }
  if(P2.defHit(P3.attackHit())){
    P2 = new Knight(250,50,255,0,0);
    P3Kills++;
  }
  if(P4.defHit(P3.attackHit())){
    P4 = new Knight(250,50,0,255,255);
    P3Kills++;
  }
  
  if(P1.defHit(P4.attackHit())){
    P1 = new Knight(350,50,0,255,0);
    P4Kills++;
  }
  if(P2.defHit(P4.attackHit())){
    P2 = new Knight(250,50,255,0,0);
    P4Kills++;
  }
  if(P3.defHit(P4.attackHit())){
    P3 = new Knight(250,50,0,0,255);
    P4Kills++;
  }
  
  if(P1.defHit(P2.attackHit())){
    P1 = new Knight(350,50,0,255,0);
    P2Kills++;
  }
  if(P3.defHit(P2.attackHit())){
    P3 = new Knight(250,50,0,0,255);
    P2Kills++;
  }
  if(P4.defHit(P2.attackHit())){
    P4 = new Knight(250,50,0,255,255);
    P2Kills++;
  }
  
  if(P3.defHit(P1.attackHit())){
    P3 = new Knight(350,50,0,0,255);
    P1Kills++;
  }
  if(P2.defHit(P1.attackHit())){
    P2 = new Knight(250,50,255,0,0);
    P1Kills++;
  }
  if(P4.defHit(P1.attackHit())){
    P4 = new Knight(250,50,0,255,255);
    P1Kills++;
  }
  fill(255);
  //accelerate
  if(P1MovingRight)
    P1.addAccel(4,0);
  if(P1MovingLeft)
    P1.addAccel(-4,0);
  if(P2MovingRight)
    P2.addAccel(4,0);
  if(P2MovingLeft)
    P2.addAccel(-4,0);
  if(P3MovingRight)
    P3.addAccel(4,0);
  if(P3MovingLeft)
    P3.addAccel(-4,0);
  if(P4MovingRight)
    P4.addAccel(4,0);
  if(P4MovingLeft)
    P4.addAccel(-4,0);
  P1.accelerate();
  P2.accelerate();
  P3.accelerate();
  P4.accelerate();
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
    case 90:
      P3.addAccel(-10,0);
      P3MovingLeft = true;
      break;
    case 88:
      P3.addAccel(10,0);
      P3MovingRight = true;
      break;
    case 86:
      P3.addAccel(0,16);
      P3.jump();
      break;
    case 85:
      P4.addAccel(-10,0);
      P4MovingLeft = true;
      break;
    case 73:
      P4.addAccel(10,0);
      P4MovingRight = true;
      break;
    case 80:
      P4.addAccel(0,16);
      P4.jump();
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
    case 90:
      P3MovingLeft = false;
      break;
    case 88:
      P3MovingRight = false;
      break;
    case 85:
      P4MovingLeft = false;
      break;
    case 73:
      P4MovingRight = false;
      break;
  }
}

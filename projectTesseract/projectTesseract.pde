boolean lose = false,play = false;
library li = new library();
manager p = new manager(0,0,1);
void setup(){
  size(999,999);
}

void draw(){
  background(0);
  p.drawGame();
  if(lose == true){
    fill(0);
    text("lose", 10, 30);
  }
  fill(220,182,133);
}

void keyPressed(){
  switch(keyCode){
    case 87:
      
    case 65:
    case 83:
    case 68:
  }
}

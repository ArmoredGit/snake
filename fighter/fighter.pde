Hero h;
Level g;
void setup(){
  size(1000,1000);
  h = new Hero();
  g = new Level();
}

void draw(){
  //draw background
  g.drawLevel();
  //draw foreground an characters
  h.drawHero();
  //calc hitboxes
  //accelerate
}

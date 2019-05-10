public class manager extends levelSlicer{
  int _x,_y;
  public manager(){
    super(0,0,0);
  }
  public manager(int x, int y,int level){
    super(li.demoSelecter(level)[0][0][0][0][0],li.demoSelecter(level)[0][0][0][0][1],li.demoSelecter(level)[0][0][0][0][2]);
    setLevel(li.demoSelecter(level)[1]);
    _x = x;
    _y = y;
  }
  
  public void move(int direction){
    //moves you across the screendoor unless in the tesseract you would be hitting something in tesseract
    //1 up, 2 left, 3 down, 4 right
    switch(direction){
      case 1:
        _x++;
      case 2:
        _y++;
      case 3:
        _x--;
      case 4:
        _y--;
    }
  }
  
  public void drawGame(){
    //draws the full game that you can see projected
    int w = width * 9 / 10;
    int a = width * 1 / 10;
    int l = getSlice().length;
    for(int i = 0; i < l; i++){
      for(int j = 0; j < l; j++){
        if(getSlice()[i][j]/10 == 1){
          fill(120,160,73);
          rect(i * w / l, a + j * w / l, w / l, w / l);
          if(getSlice()[i][j]%10 == 1){
            fill(83, 112, 50);
            rect(i * w / l, a + j * w / l, w / l, w / l);
          }
        }else{
          fill(180,220,133);
          rect(i * w / l, a + j * w / l, w / l, w / l);
          if(getSlice()[i][j]%10 == 1){
            fill(75, 89, 59);
            rect(i * w / l, a + j * w / l, w / l, w / l);
          }
        }
      }
    }
  }
}

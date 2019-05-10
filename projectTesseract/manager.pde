public class manager extends levelSlicer{
  private int [][] screenDoor;
  int _x,_y;
  public manager(){
    super(0,0,0);
  }
  public manager(int x, int y,int level){
    super(li.demoSelecter(level)[0][0][0][0][0],li.demoSelecter(level)[0][0][0][0][1],li.demoSelecter(level)[0][0][0][0][2]);
    screenDoor = new int[li.demoSelecter(level)[0][0][0][0][0]][li.demoSelecter(level)[0][0][0][0][0]];
    setLevel(li.demoSelecter(level)[1]);
    _x = x;
    _y = y;
  }
  
  public void move(){
    //moves you across the screendoor unless in the tesseract you would be hitting something in tesseract
    
  }
  
  public void drawGame(){
    //draws the full game that you can see projected
    int w = width * 9 / 10;
    int a = width * 1 / 10;
    int l = getSlice().length;
    for(int i = 0; i < l; i++){
      for(int j = 0; j < l; j++){
        fill(180,220,133);
        rect(i * w / l, a + j * w / l, w / l, w / l);
        if(getSlice()[i][j]/10 >= 1){
          fill(120,160,73);
          rect(i * w / l, a + j * w / l, w / l, w / l);
        }
        if(getSlice()[i][j]%10 == 1){
          fill(255);
          ellipse((i * w / l) + w / (l*2), (j * w / l) + w / (l*2), w / l, w / l);
        } else if(getSlice()[i][j]%10 == 2){
          fill(0);
          ellipse((i * w / l) + w / (l*2), (j * w / l) + w / (l*2), w / l, w / l);
        } else if(getSlice()[i][j]%10 == 3){
          fill(100);
          ellipse((i * w / l) + w / (l*2), (j * w / l) + w / (l*2), w / l, w / l);
        } else if(getSlice()[i][j]%10 == 4){
          fill(50,230,0);
          ellipse((i * w / l) + w / (l*2), (j * w / l) + w / (l*2), w / l, w / l);
        }
      }
    }
  }
}

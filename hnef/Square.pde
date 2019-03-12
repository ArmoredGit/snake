public class Square{
  private boolean isFilled = false;
  private int piece = 0;
  private boolean king = false;
  
  public Square(){
    isFilled = true;
  }
  
  public Square(int p){
    piece = p;
    if(p > 0)
      isFilled = true;
    if(p == 3)
      setking();
  }
  
  public boolean enemy(int s){
    return (s > 0 && s != piece);
  }
  
  private void setking(){
    piece = 2;
    king = true;
  }
  
  public void drawSquare(int x, int y){
    fill(220,182,133);
    rect((x - 1) * width / 11, (y - 1) * width / 11, x * width / 11, y * width / 11);
    if(isFilled){
      if(king)
        fill(180);
      else if(piece == 1)
        fill(0);
      else
        fill(255);
      ellipse(((x -1) * width / 11) + width / 22, ((y -1) * width / 11) + width / 22, width / 11, width / 11);
    }
  }
}

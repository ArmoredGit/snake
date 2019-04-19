public class Hero{
  private int _Size;
  private int _X;
  private int _Y;
  private int _aclX;
  private int _aclY;
  
  public Hero(){
    _Size = 15;
    _X = 40;
    _Y = 40;
    _aclX = 1;
    _aclY = 1;
  }
  
  //accelerate character
  //draw character
  public void drawHero(){
    ellipse(_X, _Y, width / _Size, height / _Size);
  }
  //get character def hitboxes
  //get attack hit boxes
  //right/left attack
  //right/left add stroke
  //up attack
  //up add stroke
  //down attack
  //down add stroke
  
}

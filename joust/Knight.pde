public class Knight{
  private int _Size;
  private int _X;
  private int _Y;
  private int _aclX;
  private int _aclY;
  private int _r;
  private int _g;
  private int _b;
  private boolean faceing;
  
  public Knight(int x, int y, int r, int g, int b){
    _Size = 15;
    _X = x;
    _Y = y;
    _r = r;
    _g = g;
    _b = b;
    _aclX = 0;
    _aclY = 0;
    faceing = true;
  }
  
  //accelerate character
  public void accelerate(){
    _X += _aclX;
    if(_aclX != 0)
      _aclX += ((_aclX > 0)?-2:2);
    if(_X < 0)
      _X = width;
    if(_X > width)
      _X = 0;
    jump();
  }
  public void jump(){
    _Y -= _aclY;
    _aclY -= 2;
    if(_aclY < -50)
      _aclY= -50;
    if(_Y < height/(2*_Size))
      _Y = height/(2*_Size);
    if(_Y > (3 * height / 4) - height/(2*_Size)){
      _Y = (3 * height / 4) - height/(2*_Size);
      _aclY = 0;
    }
  }
  //draw character
  public void drawHero(){
    fill(_r,_g,_b);
    ellipse(_X, _Y, width / _Size, height / _Size);
    if(faceing)
      ellipse(_X+15+(height/(2 * _Size)),_Y+1,20,20);
    else
      ellipse((_X-15-(height/(2 * _Size))),_Y+1,20,20);
  }
  //get character def hitboxes
  public boolean defHit(int[] hit){
    if(hit[4] < _Y && (sqrt((_X - hit[0]) * (_X - hit[0]) + (_Y - hit[1]) * (_Y - hit[1])) < ((width / (_Size * 2)) + hit[2]))){
      return true;
    }
    return false;
  }
    
  //get attack hit boxes
  public int[] attackHit(){
    int[] j = {(_X-15-(height/(2 * _Size))),_Y+1,10,_X,_Y};
    if(faceing)
      j[0] += 2 * (15+(height/(2 * _Size)));
    return j;
  }
  
  //add aceleration
  public void addAccel(int aclX, int aclY){
    _aclX += aclX;
    if(aclY > 0)
      _aclY = 0;
    _aclY += aclY;
    if(_aclX > 10)
      _aclX= 10;
    if(_aclX < -10)
      _aclX= -10;
    if(_aclY < -50)
      _aclY= -50;
    if(_aclX > 0)
      faceing = true;
    if(_aclX < 0)
      faceing = false;
  }
  public int getY(){
    return _Y;
  }
}

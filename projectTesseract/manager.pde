public class manager extends levelSlicer{
  private int _tx,_ty;
  private int _size;
  public manager(){
    super(0,0,0);
  }
  public manager(int x, int y,int level){
    super(li.levelSelecter(level)[0][0][0][0][0],li.levelSelecter(level)[0][0][0][0][1],li.levelSelecter(level)[0][0][0][0][2]);
    setLevel(li.levelSelecter(level)[1]);
    _tx = x;
    _ty = y;
    _size = li.levelSelecter(level)[0][0][0][0][0];
  }
  
  public void move(int direction){
    //moves you across the screendoor unless in the tesseract you would be hitting something in tesseract
    //1 up, 2 left, 3 down, 4 right
    switch(direction){
      case 1:
        _tx++;
        if(_tx > _size - 1)
          _tx = _size - 1;
        if(getSlice()[_tx][_ty]%10 == 1)
          _tx--;
        if(getSlice()[_tx][_ty]%10 == 3)
          if(pushBlocks(1))
            setSubSquare(_tx + 1,_ty,setSubSquare(_tx,_ty,0));
        break;
      case 2:
        _ty++;
        if(_ty > _size - 1)
          _ty = _size - 1;
        if(getSlice()[_tx][_ty]%10 == 1)
          _ty--;
        if(getSlice()[_tx][_ty]%10 == 3)
          if(pushBlocks(2))
            setSubSquare(_tx,_ty + 1,setSubSquare(_tx,_ty,0));
        break;
      case 3:
        _tx--;
        if(_tx < 0)
          _tx = 0;
        if(getSlice()[_tx][_ty]%10 == 1)
          _tx++;
        if(getSlice()[_tx][_ty]%10 == 3)
          if(pushBlocks(3))
            setSubSquare(_tx - 1,_ty,setSubSquare(_tx,_ty,0));
        break;
      case 4:
        _ty--;
        if(_ty < 0)
          _ty = 0;
        if(getSlice()[_tx][_ty]%10 == 1)
          _ty++;
        if(getSlice()[_tx][_ty]%10 == 3)
          if(pushBlocks(4))
            setSubSquare(_tx,_ty - 1,setSubSquare(_tx,_ty,0));
        break;
    }
    setSubCords(_tx,_ty);
  }
  
  private boolean pushBlocks(int direction){
    //pushes blocks, returns true if it happened
    switch(direction){
      case 1:
        if(_tx + 1 > _size - 1){
          _tx = _size - 2;
          return false;
        }else if(getSlice()[_tx + 1][_ty]%10 != 0){
          _tx--;
          return false;
        }
        break;
      case 2:
        if(_ty + 1 > _size - 1){
          _ty = _size - 2;
          return false;
        }else if(getSlice()[_tx][_ty + 1]%10 != 0){
          _ty--;
          return false;
        }
        break;
      case 3:
        if(_tx - 1 < 0){
          _tx = 1;
          return false;
        }else if(getSlice()[_tx - 1][_ty]%10 != 0){
          _tx++;
          return false;
        }
        break;
      case 4:
        if(_ty - 1 < 0){
          _ty = 1;
          return false;
        }else if(getSlice()[_tx][_ty - 1]%10 != 0){
          _ty++;
          return false;
        }
        break;
    }
    return true;
  }
  
  public void drawGame(){
    //draws the full game that you can see projected
    _ty = fixY();
    int w = width * 9 / 10;
    int a = width * 1 / 10;
    int l = getSlice().length;
    for(int i = 0; i < l; i++){
      for(int j = 0; j < l; j++){
        if((i%2 == 1)?j%2 == 1:j%2 == 0){
          fill(120,160,73);
          image(evenFloor,i * w / l, a + j * w / l, w / l, w / l);
          if(getSlice()[i][j]%10 == 1){
            fill(37, 48, 24);
            image(evenWall,i * w / l, a + j * w / l, w / l, w / l);
          }
        }else{
          fill(180,220,133);
          image(oddFloor,i * w / l, a + j * w / l, w / l, w / l);
          if(getSlice()[i][j]%10 == 1){
            fill(75, 89, 59);
            image(oddWall,i * w / l, a + j * w / l, w / l, w / l);
          }
        }
        if(getSlice()[i][j]%10 == 2){
          fill(232, 215, 30);
          rect(i * w / l, a + j * w / l, w / l, w / l);
        }else if(getSlice()[i][j]%10 == 3){
          fill(233, 65, 242);
          rect(i * w / l, a + j * w / l, w / l, w / l);
        }
      }
    }
    fill(250);
    image(player,_tx * w / l, a + _ty * w / l, w / l, w / l);
  }
}

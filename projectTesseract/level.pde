public class levelSlicer{
  private int _size,_planeCount,_rotation;
  int _x;
  int _y;
  int _z;
  int _w;
  private int[][][][] teseract;
  public levelSlicer(int size, int plane, int planes){
    _size = size;
    _planeCount = planes;
    _rotation = plane;
    teseract = new int[size][size][size][size];
    //iterate and fill with 0
  }
  
  //marking scheme for teserct w z y x
  //x is the rotational acess and doesn't change upon spin
  //planes are 1 = xy , 2 = xz , 3 = xw
  
  public void setLevel(int[][][][] arr){
    teseract = arr;
  }
  
  public int[][] getSlice(){
    // get the 2D slice of the tesseract
    int[][] arr = new int[_size][_size];
    for(int i = 0; i < _size; i++){
      for(int j = 0; j < _size; j++){
        if(_rotation == 1)
          arr[i][j] = teseract[_w][_z][j][i];
        else if(_rotation == 2)
          arr[i][j] = teseract[_w][j][_y][i];
        else if(_rotation == 3)
          arr[i][j] = teseract[j][_z][_y][i];
      }
    }
    return arr;
  }
  
  public void rotatePlane(int r){
    _rotation += r;
    if(_rotation < 1)
      _rotation = _planeCount;
    if(_rotation > _planeCount)
      _rotation = 1;
    //swaps to the next plane ex. xy to xz
  }
  
  public void setSubSquare(int x, int y, int set){
    //sets the point in the tesseract by giving 2d cords of the slice
    if(_rotation == 1)
      teseract[_w][_z][y][x] = set;
    else if(_rotation == 2)
      teseract[_w][y][_y][x] = set;
    else if(_rotation == 3)
      teseract[y][_z][_y][x] = set;
  }
  
  public boolean setSubSquare(int x, int y, int z, int w, int set){
    //sets the point in the tesseract via 4d point
    teseract[w][z][y][x] = set;
    return true;
  }
}
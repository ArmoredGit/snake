public class library{
  public library(){
    
  }
  
  //format for returrned levels is {{{{{_size,_plane,_planeCount}}}},tesseract} ~ eventualy may add an arrray of sprite references
  
  public int[][][][][] demoSelecter(int level){
    int[][][][][] a = {{{{{4,1,1}}}},demoMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][][] menuSelecter(int level){
    int[][][][][] a = {{{{{3,1,1}}}},demoMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][][] levelSelecter(int level){
    int[][][][][] a = {{{{{3,1,1}}}},demoMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] demoMapSelecter(int level){
    int[][][][] a = {{
      {{0,10,0,11},{10,0,10,1},{0,10,0,11},{10,0,10,1}}}};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] menuMapSelecter(int level){
    int[][][][] a = {{{{
      1,10,1},{10,12,1},{11,3,4}}}};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] levelMapSelecter(int level){
    int[][][][] a = {{{{
      1,10,1},{10,12,1},{11,3,4}}}};
    switch(level){
      default:
        return a;
    }
  }
  
}

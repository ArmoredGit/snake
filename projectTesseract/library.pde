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
    int[][][][][] a = {{{{{3,1,3}}}},menuMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][][] levelSelecter(int level){
    int[][][][][] a = {{{{{4,1,3}}}},levelMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] demoMapSelecter(int level){
    int[][][][] a = {{
      {{0,0,2,0},{0,3,0,0},{0,0,0,0},{0,0,0,0}}}};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] menuMapSelecter(int level){
    int[][][][] a = {{
      {{0,0,0},  {1,1,1},  {0,0,0}},
      {{0,1,0},  {0,1,1},  {0,0,1}},
      {{1,0,0},  {0,0,0},  {0,0,1}}},
      {
      {{1,1,1},  {0,1,1},  {0,0,1}},
      {{0,1,1},  {1,2,0},  {0,1,0}},
      {{0,0,0},  {1,1,1},  {0,1,0}}},
      {
      {{0,0,0},  {0,0,0},  {1,1,0}},
      {{1,0,0},  {0,1,1},  {0,0,1}},
      {{0,0,1},  {0,1,0},  {1,0,0}}}};
      
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] levelMapSelecter(int level){
    int[][][][] a = {{
      {{0,0,1,0},  {0,0,1,0},  {1,0,0,0},  {0,1,0,1}},
      {{1,1,0,0},  {0,0,0,1},  {0,1,1,1},  {0,0,1,0}},
      {{0,0,0,1},  {0,1,1,0},  {1,0,0,0},  {0,1,0,1}},
      {{1,0,0,1},  {0,0,1,1},  {0,1,1,0},  {0,0,1,0}}},
      {
      {{0,1,1,1},  {1,0,0,1},  {1,1,0,1},  {0,0,1,0}},
      {{0,1,0,0},  {1,1,1,0},  {1,2,1,1},  {0,1,0,1}},
      {{1,0,1,1},  {1,1,0,0},  {0,0,1,1},  {1,1,0,1}},
      {{0,0,1,0},  {0,1,0,1},  {1,1,0,1},  {0,0,1,1}}},
      {
      {{0,0,1,1},  {0,1,1,0},  {1,0,1,1},  {0,1,1,0}},
      {{1,1,0,1},  {0,0,1,1},  {1,1,0,0},  {1,0,1,1}},
      {{0,1,0,0},  {1,0,1,0},  {1,1,0,1},  {1,1,1,0}},
      {{0,0,0,1},  {0,1,1,0},  {0,0,1,1},  {1,0,0,0}}},
      {
      {{1,0,0,0},  {0,1,1,1},  {1,1,0,1},  {0,1,0,0}},
      {{0,0,1,0},  {1,1,1,0},  {0,1,0,0},  {1,0,1,1}},
      {{0,0,1,0},  {1,1,0,1},  {0,1,1,0},  {1,0,0,1}},
      {{1,1,1,0},  {1,0,0,1},  {0,0,1,0},  {0,1,1,1}}}};
    switch(level){
      default:
        return a;
    }
  }
  
}

public class library{
  public library(){
    
  }
  
  //format for returrned levels is {{{{{_size,_plane,_planeCount}}}},tesseract} ~ eventualy may add an arrray of sprite references
  
  public int[][][][][] demoSelecter(int level){
    int[][][][][] a = {{{{{7,1,1}}}},demoMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][][] menuSelecter(int level){
    int[][][][][] a = {{{{{7,1,1}}}},menuMapSelecter(level)};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][][] levelSelecter(int level){
    int[][][][][] s1 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s2 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s3 = {{{{{3,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s4 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s5 = {{{{{5,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s6 = {{{{{6,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s7 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s8 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] s9 = {{{{{4,1,1}}}},levelMapSelecter(level)};
    int[][][][][] t3 = {{{{{3,1,3}}}},levelMapSelecter(level)};
    int[][][][][] t4 = {{{{{4,1,3}}}},levelMapSelecter(level)};
    switch(level){
      case 1:
        return s1;
      case 2:
        return s2;
      case 3:
        return s3;
      case 4:
        return s4;
      case 5:
        return s5;
      case 6:
        return s6;
      case 7:
        return s7;
      case 8:
        return s8;
      case 9:
        return s9;
      default:
        return t4;
    }
  }
  
  public int[][][][] demoMapSelecter(int level){
    int[][][][] a = {{
      {{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0}}}};
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] menuMapSelecter(int level){
    int[][][][] a = {{
      {{0,0,0,0,0,0,0},{0,54,0,64,0,74,0},{0,0,0,0,0,0,0},{0,84,0,94,0,104,0},{0,0,0,0,0,0,0},{0,114,0,124,0,134,0},{0,0,0,0,0,0,0}}}};
      
    switch(level){
      default:
        return a;
    }
  }
  
  public int[][][][] levelMapSelecter(int level){
    int[][][][] t4 = {{
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
    
    int[][][][] t3 = {{
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
      
      int[][][][] s1 = {{
      {{0,1,2,0},{0,1,1,0},{0,1,0,0},{0,0,0,1}}}};
      
      int[][][][] s2 = {{
      {{0,1,3,0},{0,1,0,1},{0,1,0,0},{0,24,1,2}}}};
      
      int[][][][] s3 = {{
      {{0,1,0},{0,1,2},{0,3,34}}}};
      
      int[][][][] s4 = {{
      {{0,3,44,0},{1,0,1,1},{0,0,1,2},{3,0,0,0}}}};
      
      int[][][][] s5 = {{
      {{0,0,0,0,5},{3,3,0,0,0},{144,5,0,0,0},{0,1,5,0,144},{5,2,1,0,5}}}};
      
      int[][][][] s6 = {{
      {{0,0,0,1,0,2},{0,1,0,1,0,1},{154,1,0,1,0,0},{1,0,0,0,1,1},{5,0,0,0,0,0},{5,5,5,164,5,5}}}};
      
      int[][][][] s7 = {{
      {{0,3,44,0},{1,0,1,1},{0,0,1,2},{3,0,0,0}}}};
      
      int[][][][] s8 = {{
      {{0,3,44,0},{1,0,1,1},{0,0,1,2},{3,0,0,0}}}};
      
      int[][][][] s9 = {{
      {{0,3,44,0},{1,0,1,1},{0,0,1,2},{3,0,0,0}}}};
      
    switch(level){
      case 1:
        return s1;
      case 2:
        return s2;
      case 3:
        return s3;
      case 4:
        return s4;
      case 5:
        return s5;
      case 6:
        return s6;
      case 7:
        return s7;
      case 8:
        return s8;
      case 9:
        return s9;
      default:
        return t4;
    }
  }
  
}

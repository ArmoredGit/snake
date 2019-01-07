int level = 1,tic = 0,gameSize = 20,foodCount = 0;
boolean lose = false,food = false,play = false;
int[][] board = new int[gameSize][gameSize];
Snake game = new Snake();

void setup(){
  size(1000,1000);
  noStroke();
  textSize(50);
  keyCode = RIGHT;
  for(int i = 0; i < gameSize; i++){
    for(int j = 0; j < gameSize; j++){
      board[i][j] = 0;
    }
  }
}

void draw() {
  background(50, 150, 50);
  fill(200,40,40);
  if(!lose && play){
    game.drawGame();
    if(tic >= 40/level){
      game.move();
      tic = 0;
    }
    if(food == false)
      game.foodGet();
    tic++;
  }else if(lose && play){
    text("You Lost\nPress \"enter\" to begin",50,50);
  }else{
    text("Press \"enter\" to begin",50,50);
  }
}

void keyPressed(){
  if((lose ^ !play) && keyCode == ENTER){
    lose = false;
    play = true;
    level = 1;
    tic = 0;
    foodCount = 0;
    keyCode = RIGHT;
    for(int i = 0; i < gameSize; i++){
      for(int j = 0; j < gameSize; j++){
        board[i][j] = 0;
      }
    }
    board[0][0] = 1;
  }
}

public class Snake{
  int x = 0,y = 0;
  Snake(){
    board[x][y] = 1;
    
  }
  
  public void reset(){
    x = 0;
    y = 0;
  }
  
  public void foodGet(){
    int t = (int)(random(1, 8));
    int j = (int)(random(1, 8));
    if(board[t][j] == 0){
      board[t][j] = -1;
    } else {
      foodGet();
    }
    food = true;
  }
  
  public void drawGame(){
    for(int i = 0; i < gameSize; i++){
      for(int j = 0; j < gameSize; j++){
        if(board[i][j] >= 1)
          rect(width/gameSize * i,height/gameSize * j,width/gameSize,height/gameSize);
        if(board[i][j] == -1){
          fill(255);
          rect(width/gameSize * i,height/gameSize * j,width/gameSize,height/gameSize);
          fill(200,40,40);
        }
      }
    }
  }
  
  public void move(){
    for(int i = 0; i < gameSize; i++){
      for(int j = 0; j < gameSize; j++){
        if(board[i][j] >= 1){
          board[i][j]++;
          if(board[i][j] > (3 + foodCount))
            board[i][j] = 0;
        }
      }
    } 
    switch(keyCode){
      case UP :
        y--;
        break;
      case DOWN :
        y++;
        break;
      case LEFT :
        x--;
        break;
      case RIGHT :
        x++;
        break;
    }
    if(x >= gameSize || y >= gameSize || x < 0 || Y < 0){
      lose = true;
      return;
    }
    if(board[x][y] >= 1){
      lose = true;
    }
    if(board[x][y] == -1){
      foodCount++;
      food = false;
    }
    board[x][y] = 1;
  }
}

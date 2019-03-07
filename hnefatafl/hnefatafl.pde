boolean loseA = false,loseB = false,play = false;
int[][] board = new int[11][11];
Player p = new Player();
void setup(){
  size(1000,1000);
  for(int i = 0; i < 11; i++){
    for(int j = 0; j < 11; j++){
      board[i][j] = 0;
    }
  }
  board[3][2] = 1;
}
void draw(){
  background(220,182,133);
  for(int i = 0; i < 11; i++){
    for(int j = 0; j < 11; j++){
        fill(220,182,133);
      rect(i * width / 11, j * width / 11, (i + 1) * width / 11, (j + 1) * width / 11);
      if(board[i][j] == 1){
        fill(0);
        ellipse((i * width / 11) + (i + 1) * width / 22, (j * width / 11) + (j + 1) * width / 22, (i + 1) * width / 11, (j + 1) * width / 11);
      } else if(board[i][j] == 2){
        fill(255);
        ellipse((i * width / 11) + (i + 1) * width / 22, (j * width / 11) + (j + 1) * width / 22, (i + 1) * width / 11, (j + 1) * width / 11);
      } else if(board[i][j] == 3){
        fill(100);
        ellipse((i * width / 11) + (i + 1) * width / 22, (j * width / 11) + (j + 1) * width / 22, (i + 1) * width / 11, (j + 1) * width / 11);
      } else if(board[i][j] == 4){
        fill(230,230,0);
        ellipse((i * width / 11) + (i + 1) * width / 22, (j * width / 11) + (j + 1) * width / 22, (i + 1) * width / 11, (j + 1) * width / 11);
      }
    }
  }
  fill(220,182,133);
  print(board[0][1]);
}

void mouseClicked() {
  int x = (int) (mouseX * 11 / width);
  int y = (int) (mouseY * 11 / height);
  if(board[x][y] == 1)
    p.selectAttack(x,y);
  print(mouseX);
}

public class Player{
  private int current;
  private int selectedX;
  private int selectedY;
  private boolean moving;
  
  public Player(){
    current = 1;
    selectedX = 0;
    selectedY = 0;
    moving = false;
  }
  
  public void selectAttack(int x, int y){
    if(current != 1)
      return;
    update(x,y);
    moving = true;
    selectedX = x;
    selectedY = y;
  }
  
  public void selectDefence(int x, int y){
    if(current != 2)
      return;
    update(x,y);
    moving = true;
    selectedX = x;
    selectedY = y;
  }
  
  public void moveAttack(int x, int y){
    
  }
  
  public void moveDefence(int x, int y){
    
  }
  
  public boolean isMoving(){
    return moving;
  }
  
  private void update(int x, int y){
    int i = x;
    int j = y;
    while(i<01){
      i++;
      if(board[i][j] > 0){
        break;
      }else{
        board[i][j] = 4;
      }
    }
    j = y;
    i = x;
    while(j<10){
      j++;
      if(board[i][j] > 0){
        break;
      }else{
        board[i][j] = 4;
      }
    }
    j = y;
    i = x;
    while(i>0){
      i--;
      if(board[i][j] > 0){
        break;
      }else{
        board[i][j] = 4;
      }
    }
    j = y;
    i = x;
    while(j>0){
      j--;
      if(board[i][j] > 0){
        break;
      }else{
        board[i][j] = 4;
      }
    }
  }
}

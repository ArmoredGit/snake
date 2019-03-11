boolean loseA = false,loseB = false,play = false;
int[][] board = new int[13][13];
Player p = new Player();
void setup(){
  size(1000,1000);
  
  for(int i = 1; i < 12; i++){
    for(int j = 1; j < 12; j++){
      board[i][j] = 0;
    }
  }
  //rule 7 & 11
  board[1][1] = 10;
  board[11][1] = 10;
  board[1][11] = 10;
  board[11][11] = 10;
  board[1][8] = 1;
  board[1][4] = 1;
  board[1][5] = 1;
  board[2][6] = 1;
  board[1][6] = 1;
  board[1][7] = 1;
  board[11][8] = 1;
  board[11][4] = 1;
  board[11][5] = 1;
  board[10][6] = 1;
  board[11][6] = 1;
  board[11][7] = 1;
  board[8][1] = 1;
  board[4][1] = 1;
  board[5][1] = 1;
  board[6][2] = 1;
  board[6][1] = 1;
  board[7][1] = 1;
  board[8][11] = 1;
  board[4][11] = 1;
  board[5][11] = 1;
  board[6][10] = 1;
  board[6][11] = 1;
  board[7][11] = 1;
  board[6][6] = 23;
  board[6][7] = 2;
  board[6][5] = 2;
  board[7][6] = 2;
  board[5][6] = 2;
  board[6][8] = 2;
  board[6][4] = 2;
  board[8][6] = 2;
  board[4][6] = 2;
  board[7][7] = 2;
  board[5][5] = 2;
  board[7][5] = 2;
  board[5][7] = 2;
}
void draw(){
  background(220,182,133);
  for(int i = 1; i < 12; i++){
    for(int j = 1; j < 12; j++){
        fill(220,182,133);
      rect((i -1) * width / 11, (j -1) * width / 11, i * width / 11, j * width / 11);
      if(board[i][j]/10 >= 1){
        fill(160,122,73);
        rect((i -1) * width / 11, (j -1) * width / 11, i * width / 11, j * width / 11);
      }
      if(board[i][j]%10 == 1){
        fill(255);
        ellipse(((i -1) * width / 11) + width / 22, ((j -1) * width / 11) + width / 22, width / 11, width / 11);
      } else if(board[i][j]%10 == 2){
        fill(0);
        ellipse(((i -1) * width / 11) + width / 22, ((j -1) * width / 11) + width / 22, width / 11, width / 11);
      } else if(board[i][j]%10 == 3){
        fill(100);
        ellipse(((i -1) * width / 11) + width / 22, ((j -1) * width / 11) + width / 22, width / 11, width / 11);
      } else if(board[i][j]%10 == 4){
        fill(230,230,0);
        ellipse(((i -1) * width / 11) + width / 22, ((j -1) * width / 11) + width / 22, width / 11, width / 11);
      }
    }
  }
  if(loseA == true){
    fill(0);
    text("B wins", 10, 30);
  }
  if(loseB == true){
    fill(0);
    text("A wins", 10, 30);
  }
  fill(220,182,133);
}

void mouseClicked() {
  int x = (int) (mouseX * 11 / width) + 1;
  int y = (int) (mouseY * 11 / height) + 1;
  if(board[x][y]%10 > 0){
    p.move(x,y);
  }else{
    for(int i = 1; i < 12; i++){
      for(int j = 1; j < 12; j++){
        if(board[i][j]%10 == 4)
          board[i][j] -= 4;
        if(board[i][j] == 13)
          loseA = true;
      }
    }
    p.moving = false;
  }
}

public class Player{
  private int current;
  private int selectedX;
  private int selectedY;
  private boolean moving;
  
  public Player(){
    current = 1;
    selectedX = 2;
    selectedY = 2;
    moving = false;
  }
  
  public void move(int x, int y){
    if(current == 1){
      if(moving)
        moveAttack(x,y);
      else 
        selectAttack(x,y);
    } else {
      if(moving)
        moveDefence(x,y);
      else 
        selectDefence(x,y);
    }
  }
  
  private void selectAttack(int x, int y){
    if(current != 1 || board[x][y]%10 != 1)
      return;
    update(x,y);
    moving = true;
    selectedX = x;
    selectedY = y;
  }
  
  private void selectDefence(int x, int y){
    if(current != 2 || (board[x][y]%10 != 2 && board[x][y]%10 != 3))
      return;
    update(x,y);
    moving = true;
    selectedX = x;
    selectedY = y;
  }
  
  private void moveAttack(int x, int y){
    if(current != 1 || board[x][y]%10 != 4)
      return;
    moving = false;
    board[x][y] -= 4;
    board[x][y] += 1;
    board[selectedX][selectedY] = 0;
    current = 2;
    for(int i = 1; i < 12; i++){
      for(int j = 1; j < 12; j++){
        if(board[i][j]%10 == 4)
          board[i][j] -= 4;
      }
    }
    checkElim(x, y, 1, 2);
  }
  
  private void moveDefence(int x, int y){
    if(current != 2 || board[x][y]%10 != 4)
      return;
    moving = false;
    int V = board[selectedX][selectedY];
    board[x][y] -= 4;
    board[x][y] += V%10;
    board[selectedX][selectedY] -= V%10;
    current = 1;
    for(int i = 1; i < 12; i++){
      for(int j = 1; j < 12; j++){
        if(board[i][j]%10 == 4)
          board[i][j] -= 4;
        if(board[i][j] == 13)
          loseA = true;
      }
    }
    checkElim(x, y, 2, 1);
  }
  
  private int checkElim(int x, int y, int at, int def){
    int total = 0;
    if(board[x][y]%10 == at){
      if(board[x + 1][y]%10 == def && board[x + 1][y]/10 <= 0){
        if(board[x + 2][y]%10 == at || board[x + 2][y]/10 > 0 || (at == 2 && board[x + 2][y]%10 == 3)){
          total++;
          board[x + 1][y] -= def;
        }
      } else if(board[x + 1][y]%10 == 3 && def == 2){
        if(isKingDead(x + 1, y)){
          board[x][y - 1] = 0;
          loseB = true;
        }
      }
      if(board[x - 1][y]%10 == def && board[x - 1][y]/10 <= 0){
        if(board[x - 2][y]%10 == at || board[x - 2][y]/10 > 0 || (at == 2 && board[x - 2][y]%10 == 3)){
          total++;
          board[x - 1][y] -= def;
        }
      } else if(board[x - 1][y]%10 == 3 && def == 2){
        if(isKingDead(x - 1, y)){
          board[x][y - 1] = 0;
          loseB = true;
        }
      }
      if(board[x][y + 1]%10 == def && board[x][y + 1]/10 <= 0){
        if(board[x][y + 2]%10 == at || board[x][y + 2]/10 > 0 || (at == 2 && board[x][y + 2]%10 == 3)){
          total++;
          board[x][y + 1] -= def;
        }
      } else if(board[x][y + 1]%10 == 3 && def == 2){
        if(isKingDead(x, y + 1)){
          board[x][y - 1] = 0;
          loseB = true;
        }
      }
      if(board[x][y - 1]%10 == def && board[x][y - 1]/10 <= 0){
        if(board[x][y - 2]%10 == at || board[x][y - 2]/10 > 0 || (at == 2 && board[x][y - 2]%10 == 3)){
          total++;
          board[x][y - 1] -= def;
        }
      } else if(board[x][y - 1]%10 == 3 && def == 2){
        if(isKingDead(x, y - 1)){
          board[x][y - 1] = 0;
          loseB = true;
        }
      }
    }
    return total;
  }
  
  private boolean isKingDead(int x, int y){
    return (board[x][y]%10 == 3 && (board[x + 1][y]%10 == 1 || board[x + 1][y]/10 == 2) && (board[x][y + 1]%10 == 1 || board[x][y + 1]/10 == 2) && (board[x][y - 1]%10 == 1 || board[x][y - 1]/10 == 2) && (board[x - 1][y]%10 == 1 || board[x - 1][y]/10 == 2));
  }
  
  public boolean isMoving(){
    return moving;
  }
  
  private void update(int x, int y){
    int i = x;
    int j = y;
    int c = ((current == 2)?1:2);
    int k = ((current == 2)?1:3);
    while(i<11){
      i++;
      if(board[i][j]%10 > 0 || (board[x][y] != 3 && board[i][j]/10 > 0)){
        break;
      }
      if((board[i][j + 1]%10 != k &&board[i][j + 1]%10 != c && board[i][j + 1] / 10 <= 0) || (board[i][j - 1]%10 != c && board[i][j - 1]%10 != k && board[i][j - 1] / 10 <= 0) || board[x][y] == 3){
        board[i][j] += 4;
      }
    }
    j = y;
    i = x;
    while(j<11){
      j++;
      if(board[i][j]%10 > 0 || (board[x][y] != 3 && board[i][j]/10 > 0)){
        break;
      }
      if((board[i + 1][j]%10 != c && board[i + 1][j]%10 != k && board[i + 1][j] / 10 <= 0) || (board[i - 1][j]%10 != c && board[i - 1][j]%10 != k && board[i - 1][j] / 10 <= 0) || board[x][y] == 3){
        board[i][j] += 4;
      }
    }
    j = y;
    i = x;
    while(i>1){
      i--;
      if(board[i][j]%10 > 0 || (board[x][y] != 3 && board[i][j]/10 > 0)){
        break;
      }
      if((board[i][j + 1]%10 != c && board[i][j + 1]%10 != k && board[i][j + 1] / 10 <= 0) || (board[i][j - 1]%10 != c && board[i][j - 1]%10 != k && board[i][j - 1] / 10 <= 0) || board[x][y] == 3){
        board[i][j] += 4;
      }
    }
    j = y;
    i = x;
    while(j>1){
      j--;
      if(board[i][j]%10 > 0 || (board[x][y] != 3 && board[i][j]/10 > 0)){
        break;
      }
      if((board[i + 1][j]%10 != c && board[i + 1][j]%10 != k && board[i + 1][j] / 10 <= 0) || (board[i - 1][j]%10 != c && board[i - 1][j]%10 != k && board[i - 1][j] / 10 <= 0) || board[x][y] == 3){
        board[i][j] += 4;
      }
    }
  }
}

public class Board{
  private Square[][] field = new Square[13][13];
  public Board(){
    for(int i = 0; i < 13; i++)
      for(int j = 0; j < 13; j++)
        field[i][j] = new Square();
    for(int i = 1; i < 12; i++)
      for(int j = 1; j < 12; j++)
        field[i][j] = new Square(0);
  }
  public void drawBoard(){
    for(int i = 1; i < 12; i++)
      for(int j = 1; j < 12; j++)
        field[i][j].drawSquare(i,j);
  }
}

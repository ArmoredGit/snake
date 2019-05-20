public class eventTiles{
  public eventTiles(){
  }
  
  public void event(int id){
    switch(id){
      case 1:
        p.setSubSquare(1,1,0);
        break;
      case 2:
        p.setSubSquare(1,0,0);
        break;
      case 3:
        p.setSubSquare(1,0,0);
        break;
      case 4:
        p.setSubSquare(1,3,1);
        break;
      case 5:
        p.setLevel(1);
        playState = 1;
        break;
      case 6:
        p.setLevel(2);
        playState = 1;
        break;
      case 7:
        p.setLevel(3);
        playState = 1;
        break;
      case 8:
        p.setLevel(4);
        playState = 1;
        break;
      case 9:
        p.setLevel(5);
        playState = 1;
        break;
      case 10:
        p.setLevel(6);
        playState = 1;
        break;
      case 11:
        p.setLevel(7);
        playState = 1;
        break;
      case 12:
        p.setLevel(8);
        playState = 1;
        break;
      case 13:
        p.setLevel(9);
        playState = 1;
        break;
      case 14:
        p.setSubSquare(2,4,0);
        break;
      case 15:
        p.setSubSquare(2,2,3);
        break;
      case 16:
        p.setSubSquare(5,3,0);
        break;
      default:
        break;
    }
  }
  
  public void undoEvent(int id){
    switch(id){
      case 3:
        p.setSubSquare(1,0,1);
        break;
      case 4:
        p.setSubSquare(1,3,0);
        break;
      case 14:
        p.setSubSquare(2,4,1);
        break;
      case 16:
        p.setSubSquare(5,3,1);
        break;
      default:
        break;
    }
  }
  
  public PImage eventdraw(int id){
    switch(id){
      case 1:
        return button;
      case 5:
        return levelButton1;
      case 6:
        return levelButton2;
      case 7:
        return levelButton3;
      case 8:
        return levelButton4;
      case 9:
        return levelButton5;
      case 10:
        return levelButton6;
      case 11:
        return levelButton7;
      case 12:
        return levelButton8;
      case 13:
        return levelButton9;
      default:
        return button;
    }
  }
  
  public PImage activeEventdraw(int id){
    switch(id){
      case 1:
        return pressButtonWBlock;
      default:
        return pressButtonWBlock;
    }
  }
  
  public PImage pActiveEventdraw(int id){
    switch(id){
      case 1:
        return pressButton;
      case 5:
        return levelButton1;
      case 6:
        return levelButton2;
      case 7:
        return levelButton3;
      case 8:
        return levelButton4;
      case 9:
        return levelButton5;
      case 10:
        return levelButton6;
      case 11:
        return levelButton7;
      case 12:
        return levelButton8;
      case 13:
        return levelButton9;
      default:
        return pressButton;
    }
  }
}

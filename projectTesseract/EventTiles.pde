public class eventTiles{
  public eventTiles(){
    
  }
  
  public void event(int id){
    switch(id){
      case 1:
        break;
      default:
        break;
    }
  }
  
  public PImage eventdraw(int id){
    switch(id){
      case 1:
      return loadImage("evenFloor.png");
      default:
      return loadImage("evenFloor.png");
    }
  }
}

class Star //note that this class does NOT extend Floater
{
  private int myColor, myX, myY;
  public Star(){
    myColor= color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
}
public void show(){
  fill(myColor);
  stroke(myColor);
  ellipse(myX, myY, 5, 5);
 }
}

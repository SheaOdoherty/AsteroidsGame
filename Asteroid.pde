class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-7, 6, 6, 9, -8, -14};
    yCorners = new int[]{-9, -2, 0, 7,6, 0};
    myColor = color(255);
    myCenterX = (int)(Math.random() * 300) + 50;
    myCenterY = (int)(Math.random() * 300) + 50;
    myXspeed = (int)(Math.random() * 2) + 1;
    myYspeed = (int)(Math.random() * 2) + 1;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random() * 4) + 1;
  }
  public void move(){
      turn(rotSpeed);
    super.move();  
}
public double getX(){
  return myCenterX;
}
public double getY(){
  return myCenterY;
}
}

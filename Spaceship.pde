class Spaceship extends Floater  {   
 private int myColor, myCenterX, myCenterY;
public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -8;
    yCorners[0] = -8;
    xCorners[1]= 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2]= 8;
    xCorners[3] =-2;
    yCorners[3] = 0;
    myColor= color(255);
    myCenterX= myCenterY= 250;
  }
  public void Hyperspace()
  {
    myXspeed= 0; 
    myYspeed= 0;
    myPointDirection=(Math.random()*360);
    myCenterX =(Math.random()*500);
    myCenterY =(Math.random()*500);
}

  public double getXspeed(){
    return myXspeed;
  }
  public double getmyYspeed(){
    return myYspeed;
  }
  public double getmyPointDirection(){
    return myPointDirection;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}

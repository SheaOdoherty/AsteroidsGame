class Bullets extends Floater{
  public Bullets(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getmyPointDirection();
    accelerate(6);
  }
  
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10,10);
  }
    public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}

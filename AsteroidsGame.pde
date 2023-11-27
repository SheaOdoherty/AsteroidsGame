Star[] sky;
Spaceship bob = new Spaceship();
void setup()
{
  size(500,500);
  background(255);
  sky= new Star[200];
  for(int i = 0; i< sky.length; i++){
    sky[i] = new Star();
  }
} 
void draw()
{
  background(0);   
  for(int i = 0; i< sky.length; i++){
    sky[i].show();
  }
  bob.show();
  bob.move();
}

  public void keyPressed(){
    if(key == 'q'){
      bob.Hyperspace();
    }
    if(key == 'w'){
      bob.accelerate(0.4);
      bob.move();
  }
    if(key =='a'){
      bob.turn(-15);
  }
    if(key=='d'){
      bob.turn(15);
    }
}

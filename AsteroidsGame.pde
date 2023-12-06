Star[] sky;
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
void setup()
{
  size(500,500);
  background(255);
  sky= new Star[200];
  for(int i = 0; i< sky.length; i++){
    sky[i] = new Star();
  }
  for (int n = 0; n < 8; n++) {
    rocks.add(new Asteroid());
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
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 20)
      rocks.remove(i);
  }
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

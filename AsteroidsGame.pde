Star[] sky;
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullets> shots = new ArrayList <Bullets>();
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
   for (int i = 0; i < shots.size(); i++) {
     shots.get(i).move();
      shots.get(i).show();
   }
  for (int i = 0; i < shots.size(); i++) {
    for (int j = 0; j < rocks.size(); j++) {
      float e = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY());
      if (e < 15) {
        shots.remove(i);
        rocks.remove(j);
        break;

      }
    }
  }
  for (int n = 0; n < shots.size(); n++) {
       if(shots.get(n).getX() == 0 || shots.get(n).getX()==500){
         shots.remove(n);
      }
  }
   for (int e = 0; e < shots.size(); e++) {
       if(shots.get(e).getY() == 0 || shots.get(e).getY()==500){
         shots.remove(e);
      }
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
    if(key =='e'){
      shots.add(new Bullets(bob));
  }  
}

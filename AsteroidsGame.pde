Spaceship Bob = new Spaceship();
Star[] aurora = new Star[150];
public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < aurora.length; i++){
    aurora[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0 ; i<150; i++){
  aurora[i].show();
  }
  Bob.move();
  Bob.show();
}
public void keyPressed(){
  if(key == 'a')
  Bob.turn(-10);
  if(key == 'w')
  Bob.accelerate(1);
  if(key == 's')
  Bob.accelerate(-1);
  if(key == 'd')
  Bob.turn(10);
  if(key == 'h'){
  Bob.setXspeed(0);
  Bob.setYspeed(0);
  Bob.hyperspace();
}
}

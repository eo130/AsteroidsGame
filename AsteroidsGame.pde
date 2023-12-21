//your variable declarations here
//Asteroid [] Sue = new Asteroid[3];
Spaceship Bob = new Spaceship();
Star[] aurora = new Star[150];
ArrayList <Asteroid> flying = new ArrayList <Asteroid>();
public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < aurora.length; i++){
    aurora[i] = new Star();
  }
 // for(int i = 0; i < Sue.length; i++){
   // Sue[i] = new Asteroid();
  //}
  for(int m = 0; m < 20; m++){
    flying.add(new Asteroid());
    flying.get(m).accelerate((int)(Math.random()*15)+1);
  }
  //flying.setY((int)(Math.random()*250));
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
  //for(int i = 0; i< 5; i++){
 // Sue[i].show();
  //}
  for(int m = 0; m < flying.size(); m++){
    flying.get(m).show();
    flying.get(m).move();
    float d = dist(Bob.getX(), Bob.getY() , flying.get(m).getX(), flying.get(m).getY());
    //getY doesn't exist????
    if(d < 10)
    flying.remove(m);
  }
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

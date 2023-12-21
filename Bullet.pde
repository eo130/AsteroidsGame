class Bullet extends Floater{
    Bullet(Spaceship Bob){
     myColor = ((int)(Math.random()*255)); 
     myCenterX = Bob.getX();
     myCenterY = Bob.getY(); 
     myXspeed = Bob.getXspeed();
     myYspeed = Bob.getYspeed();
     myPointDirection = Bob.getmyPointDirection();
     accelerate(6);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void setX(int x){
   myCenterX = x;
 }
   public int getX(){
    return (int)myCenterX;
   }
 
 public void setY(int y){
   myCenterY = y;
 }
    public int getY(){
     return (int)myCenterY;
   }
 public void setXspeed(double x){
  myXspeed = x;
}
 public void setYspeed(double y){
  myYspeed = y;
}
public void setmyPointDirection(int q){
  myPointDirection = q;
}
}

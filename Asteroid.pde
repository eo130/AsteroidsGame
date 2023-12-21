  class Asteroid extends Floater{
    protected double rotSpeed;
    public Asteroid(){
      corners = 6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -11;
      yCorners[0] = -8;
      xCorners[1] = 4;
      yCorners[1] = -8;
      xCorners[2] = 14;
      yCorners[2] = 0;
      xCorners[3] = 5;
      yCorners[3] = 8;
      xCorners[4] = -11;
      yCorners[4] = 8;
      xCorners[5] = -4;
      yCorners[5] = 0;
      //end of asteroid code
      myCenterX = (int)(Math.random()*250);
      myCenterY = (int)(Math.random()*250);
      myXspeed = Math.random()*2;
      myYspeed = Math.random()*5;
      myPointDirection = 0;
      myColor = #A07171;
      rotSpeed = Math.random()*360;
    }
     //myCenterX
    public void setX(int x) {
       myCenterX= x;
    }
      public int getX(){
        return (int)myCenterX;
      }
     //myCenterY
    public void setY(int y) {
       myCenterY = y;
    }
      public int getY(){
        return (int)myCenterY;
      }
     public void move(){
       turn(rotSpeed);
       super.move();
     }
}

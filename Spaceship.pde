  class Spaceship extends Floater{
     public Spaceship() {
    //Spaceship corners and color
     corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    //initialize the rest of the member variables in this space
    }
    //myCenterX
    public void setX(int x) {
       myCenterX= x;
    }
      public int getX(){
        return (int)myCenterX;
      }
    //myXspeed
    public void setXspeed(double x) {
      myXspeed = x;
    }
      public double getXspeed(){
        return (double)myXspeed;
      }
    // myYspeed
    public void setYspeed(double y) {
      myYspeed = y;
    }
      public double getYspeed(){
        return (double)myYspeed;
      }
    //myPointDirection
    public void setmyPointDirection(int m){
      myPointDirection = m;
    }
       public double getmyPointDirection(){
         return (double)myPointDirection;
       }
    //hyperspace code below
    public void hyperspace(){
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (int)(Math.random()*360);
    }
  } // end spaceship extended class

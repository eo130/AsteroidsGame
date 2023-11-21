//your variable declarations here
Spaceship bob;
public void setup()
{
  size(500, 500);
  bob = new Spaceship();
}
public void draw()
{
  background(0);
  bob.show();
}
class Floater {
  protected double myCenterX, myCenterY;
  protected double myXspeed, myYspeed;
  protected double myPointDirection;
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  protected int myColor;
  Floater() {
    // constructors
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    myColor = 255;
    myCenterX = (int)(Math.random()*350);
    myCenterY = (int)(Math.random()*350);
  }
  public void keyPressed() {
    if (key == 'w') {
      //bob. what ;
    }
  }
    void show() {
      fill(myColor);
      ellipse((float)myCenterX, (float)myCenterY, 10, 10);
    }
    void move() {
    }
    void turn() {
    }
  } //class ends
  class Spaceship extends Floater {
    public Spaceship() {
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
    }
  }
  class Stars extends Floater {
  }

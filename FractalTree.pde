private double fractionLength = .8;
private int smallestBranch = 10;
private double branchAngle = .2;
public void setup()
{
  size(640, 480);
  noLoop();
}
public void draw()
{
  background(0);
  stroke(0, 255, 0);
  line(320, 480, 320, 380);
  drawBranches(320, 380, 100, 3*Math.PI/2); 
  //drawBranches2(320, 380, 100, 3*Math.PI/2); //will add later
 
  noStroke();
  fill(24,139,34);
  rect(423,280,5,10);
  fill(255,0,0);
  ellipse(425, 300,20,25);
  stroke(255,255,255);
  noFill();
  ellipse(460,370,20,30);
  line(460,387,460,430);
  line(430,370,460,400);
  line(430,390,460,400);
  line(460,430,435,450);
  line(460,430,480,450);
  
}
  public void drawBranches(int x, int y, double branchLength, double angle)
  {
    double angle1 = angle + branchAngle;
    double angle2 = angle - branchAngle;
    branchLength = branchLength * fractionLength;
    int endX1 =  (int)(branchLength*Math.cos(angle1) + x);
    int endY1 = (int)(branchLength*Math.sin(angle1) + y);
    int endX2 = (int)(branchLength*Math.cos(angle2) + x);
    int endY2 = (int)(branchLength*Math.sin(angle2)+y );
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    if (branchLength > smallestBranch)
    {
      drawBranches(endX1, endY1, branchLength-1, angle1-50);
      drawBranches(endX2, endY2, branchLength-1, angle2-20);
 

    }
  } 
     //your code here

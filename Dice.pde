void setup()
{
  size(675, 675);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  int sum=0;
  background(150,100,255);
  for(int x=100; x<600; x+=100){
    for(int y=50; y<500; y+=100){
  Die Pat = new Die(x,y);
  Pat.show();
  sum = sum + Pat.mySide;
    }
  }
  fill(255);
  textSize(24);
  text("Sum of dice: " + sum,320,650);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int mySide, myX, myY;
  Die(int x, int y)
  {
    myX= x;
    myY= y;
    roll();
  }
  void roll()
  {
    mySide= (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX,myY,75,75);
    fill(0);
    if(mySide == 1){
      ellipse(myX+37,myY+37,10,10);
  }else if(mySide ==  2){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+60,myY+60,10,10);
    }else if(mySide ==  3){
      ellipse(myX+37,myY+37,10,10);
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+60,myY+60,10,10);
    }else if (mySide == 4){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+60,myY+60,10,10);
      ellipse(myX+60,myY+15,10,10);
      ellipse(myX+15,myY+60,10,10);
  }else if(mySide == 5){
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+60,myY+60,10,10);
    ellipse(myX+60,myY+15,10,10);
    ellipse(myX+15,myY+60,10,10);
    ellipse(myX+37,myY+37,10,10);
  }else{
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+60,myY+60,10,10);
    ellipse(myX+60,myY+15,10,10);
    ellipse(myX+15,myY+60,10,10);
    ellipse(myX+37,myY+15,10,10);
    ellipse(myX+37,myY+60,10,10);
    }
  }
}

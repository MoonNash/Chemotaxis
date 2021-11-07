Circle [] tiny;
void setup()
{

  size(550,550);
  background(215);
  tiny = new Circle[170];
  for(int i=0;i<tiny.length;i++)
  {
    tiny[i]=new Circle();
  }
}
void draw()
{
  for(int i =0;i<tiny.length;i++)
  {
    tiny[i].show();
    tiny[i].move();
  }
}
class Circle
{
 int myX,myY,myColor,myOpacity;
  Circle()
{
  myX=275;
  myY=275;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  myOpacity = (int)(Math.random()*60)+50;
}
void move(){
  myX=myX+(int)(Math.random()*5)-2;
  myY=myY+(int)(Math.random()*5)-2;
}
void show(){
  stroke(200);
  fill(myColor,myOpacity);
  ellipse(myX,myY,50,50);
  rect(myX+5,myY-2,7,10);
  rect(myX-15,myY-2,7,10);
  rect(myX-10,myY+12,17,3);

}
}

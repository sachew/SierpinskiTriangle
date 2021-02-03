public void setup()
{
  size(400,400);
  background(0,0,0);
}
public void draw()
{
  fill(66,176,245);
  sierpinski(200,200,60);
}
public void mousePressed()//optional
{
  fill(66,176,245);
  sierpinski(mouseX,mouseY,60);
}
public void mouseDragged(){
  fill(66,176,245);
  sierpinski(mouseX,mouseY,60);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}

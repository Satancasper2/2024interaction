//week14_06_cute_cursor
PImage c1,c2;
void setup(){
  size(500,500);
  c1 = loadImage("cursor1.png");
  c2 = loadImage("cursor2.png");
  cursor(c1);
}
void draw(){
  background(#FFFFF2);
  if(frameCount%120==0) cursor(c2);
  if(frameCount%120==60) cursor(c1);
}

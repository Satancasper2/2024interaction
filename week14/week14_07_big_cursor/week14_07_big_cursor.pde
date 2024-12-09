//week14_07_big_cursor
PImage c1,c2,imgCursor;
void setup(){
  size(500,500);
  c1 = loadImage("bigc1.png");
  c2 = loadImage("bigc2.png");
  imgCursor = c2;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(imgCursor,mouseX,mouseY);
  imageMode(CORNER);
  if(frameCount%120==0) imgCursor = c1;
  if(frameCount%120==60) imgCursor = c2;
}

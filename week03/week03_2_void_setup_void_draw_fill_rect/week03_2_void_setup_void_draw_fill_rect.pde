//week03_2_void_setup_void_draw_fill_rect
PImage img;
void setup()
{
  size(600,400);
  img=loadImage("arufa.jpg");
}
void draw()
{
  image(img,0,0);
  noStroke();//無邊框
  fill(200,200,255,128);//前3數字為顏色設定，後面的數字為透明度
  rect(mouseX,mouseY,70,50);
}

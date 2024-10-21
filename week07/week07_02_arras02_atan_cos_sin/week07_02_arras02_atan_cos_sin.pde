//week07_02_arras02_atan_cos_sin
void setup() {
  size(500, 400);
}
float x=250, y=200;
void draw() {
  background(215, 184, 200);
  float dx = mouseX-x,dy=mouseY-y;
  float angle = atan2(dy,dx);
  strokeWeight(15);
  line(x,y,x+cos(angle)*40,y+sin(angle)*40);
  
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(240,155,20,25);
  
  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(x, y, 60, 60);
}

//week07_03_arras03_atan_angle_rotate_translate_myTank
void setup() {
  size(500, 400);
}
float x=250, y=200;
void draw() {
  background(215, 184, 200);
  float dx = mouseX-x,dy=mouseY-y;
  float angle = atan2(dy,dx);
  myTank(x,y,angle);

}
void myTank(float x,float y,float angle){
  translate(x,y);
  rotate(angle);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(20,-10,20,20);
  
  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(0, 0, 55, 55);
}

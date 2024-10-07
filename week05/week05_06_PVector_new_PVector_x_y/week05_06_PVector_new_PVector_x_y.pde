//week05_06_PVector_new_PVector_x_y
void setup() {
  size(400, 600);
  c = new PVector(200, 100);//new 新物件c
  p = new PVector(200, 300);//new 新物件p
}
PVector c, p;
void draw() {
  background(255);
  ellipse(c.x, c.y, 10, 10);//使用物件c.x
  ellipse(p.x, p.y, 10, 10);
}

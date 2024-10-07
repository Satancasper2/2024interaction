//week05_08_pendulum_not_OK_PVector_sub_velocity
void setup() {
  size(400, 600);
}
float x = 200, y = 300;
void draw() {
  background(255);
  stroke(0);//黑線
  line(200, 100, x, y);
  ellipse(x, y, 30, 30);
  
  stroke(255, 0, 0);//紅線(重力向量--力朝下)
  line(x, y, x, y+100);
  
  PVector d = new PVector(x-200, y-100).normalize();//調整向量的力的多寡
  PVector d2 = new PVector(0, 1);
  float g = PVector.dot(d, d2);//cos(a)
  d.mult(100*g);
  stroke(0, 255, 0);//綠線(繩子拉力向量--力朝定點)
  line(x, y, x+d.x, y+d.y);
  
  PVector N = PVector.sub(d2.mult(100),d);//調整向量的力的多寡
  //N.mult(100*sin(acos(g)));//g是cos(a),acos(g)就是角度a
  stroke(0,0,255);//藍線(合力)
  line(x,y,x+N.x,y+N.y);
  
  v.x += N.x / 1000;
  v.y += N.y / 1000;
  x += v.x;
  y += v.y;
}
PVector v = new PVector();//球的速度,一開始是0
void mouseDragged() {
  x = mouseX;
  y = mouseY;
}
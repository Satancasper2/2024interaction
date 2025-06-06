//week11_03_optical_illusion_draw_better
void setup() {
  size(600, 600);
  noStroke();
  
  fill(236, 152, 52);
  rect(0, 0, 300, 300);
  
  fill(122, 202, 249);
  rect(300, 0, 300, 300);
  
  fill(129, 241, 128);
  rect(0, 300, 300, 300);
  
  fill(230, 95, 115);
  rect(300, 300, 300, 300);
  
  fill(191,156,205);
  ellipse(150,150,150,150);
  ellipse(450,150,150,150);
  ellipse(150,450,150,150);
  ellipse(450,450,150,150);
}

void draw() {
  fill(236, 152, 52);
  for (float y=0; y<600; y+=15) {
    for (float x=0; x<600; x+=30) {
      if(6+x<300&&6+y<300)fill(122,202,249);
      if(6+x>300&&6+y<300)fill(236, 152, 52);
      if(6+x<300&&6+y>300)fill(230, 95, 115);
      if(6+x>300&&6+y>300)fill(129, 241, 128);
      ellipse(6+x, y, 11, 11);
      ellipse(6+x+15, y+7, 11, 11);
    }
  }
}

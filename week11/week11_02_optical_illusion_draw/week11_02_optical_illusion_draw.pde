//week11_02_optical_illusion_draw
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
}

void draw() {
  fill(129, 241, 128);
  for (float y=0; y<300; y+=15) {
    for (float x=0; x<300; x+=30) {
      ellipse(x, y, 11, 11);
      ellipse(x, y, 11, 11);
    }
  }
  fill(236, 152, 52);
  for (float y=0; y<300; y+=15) {
    for (float x=0; x<300; x+=30) {
      ellipse(300+x, y, 11, 11);
      ellipse(300+x, y, 11, 11);
    }
  }
}

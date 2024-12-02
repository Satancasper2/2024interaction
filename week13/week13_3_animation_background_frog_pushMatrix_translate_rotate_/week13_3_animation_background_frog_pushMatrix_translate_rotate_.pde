//week13_3_animation_background_frog_pushMatrix_translate_rotate_popMatrix
PImage img;
void setup() {
  size(1000, 600);
  img = loadImage("img.png");
  imageMode(CENTER);
}
void frog(int x, int y) {
  pushMatrix();
    translate(x, y);
    rotate(radians(frameCount));
    image(img, 0, 0);
  popMatrix();
}
void draw() {
  background(255);
  frog(mouseX, mouseY);
  frog(200, 200);
  frog(800, 200);
  frog(200, 400);
  frog(800, 400);
}

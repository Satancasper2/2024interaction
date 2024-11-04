//week09_05_keyboard_ninja01_background_image_appleX_appleY_appleVX_appleVY_g
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
}
float appleX=100,appleY=500,appleVX=5,appleVY=-30;
void draw(){
  background(board);
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);
  appleX+=appleVX;//按照運動速度，X往右移
  appleY+=appleVY;//按照運動速度，Y也會移動
  appleVY+=0.98;//0.98重力加速度(移動的速度會受到加速度影響)
  if(appleX>600){//當蘋果太右邊時，重設蘋果位置與速度
    appleX=random(100,400);appleY=500;appleVX=random(3,6);appleVY=-30;
  }
}

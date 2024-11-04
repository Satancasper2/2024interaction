//week09_07_keyboard_ninja03_void_kerPressed_applekey
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
  textSize(50);
  textAlign(CENTER,CENTER);
  randomApple();
}
float appleX,appleY,appleVX,appleVY;
char applekey;
void randomApple(){
  appleX=random(100,500);
  appleY=500;
  if(appleX<300)appleVX=random(0,8);
  else appleVX=random(-8,0);
  appleVY=random(-30,-25);
  applekey = (char)('a'+int(random(26)));
}
int score=0;
void keyPressed(){
  if(key==applekey){
    score+=100;
  }
  else{
    score-=200;
  }
}
void draw(){
  background(board);
  text("Score:"+score,450,50);
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);
  fill(255,255,0);
  text(applekey,appleX,appleY);
  appleX+=appleVX;//按照運動速度，X往右移
  appleY+=appleVY;//按照運動速度，Y也會移動
  appleVY+=0.98;//0.98重力加速度(移動的速度會受到加速度影響)
  if(appleX>600||appleX<0||appleY>550){//當蘋果太右邊時，重設蘋果位置與速度
    randomApple();
  }
}

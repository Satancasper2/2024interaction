//week09_09_keyboard_ninja05_add_music
import processing.sound.*;
SoundFile sound1, sound2, sound3;
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");

  textAlign(CENTER, CENTER);
  randomApple();
  sound1 = new SoundFile(this, "Intro Song_Final.mp3");
  sound2 = new SoundFile(this, "Gong.mp3");
  sound3 = new SoundFile(this, "In Game Music.mp3");
  sound1.play();
}
float appleX, appleY, appleVX, appleVY;
char applekey;
void randomApple() {
  appleX=random(100, 500);
  appleY=500;
  if (appleX<300)appleVX=random(0, 8);
  else appleVX=random(-8, 0);
  appleVY=random(-30, -25);
  applekey = (char)('a'+int(random(26)));
}
int score=0;
void keyPressed() {
  if (state==0)state=1;
  if (state==2) {
    if (key==applekey) {
      score+=100;
    } else {
      score-=200;
    }
  }
}
int state = 0;
int countdown=60*4;
void draw() {
  background(board);
  if (state==0) {
    fill(255, 255, 0);
    textSize(50);
    text("Press Any Key To Start", 300, 200);
  } else if (state==1) {
    textSize(100);
    countdown--;
    if (countdown%60==0) {
      sound2.stop();
      sound2.play();
    }
    if (countdown>60*3)text("3", 300, 200);
    else if (countdown>60*2)text("2", 300, 200);
    else if (countdown>60*1)text("1", 300, 200);
    else if (countdown>0)text("GO", 300, 200);
    else {
      state=2;
      sound2.stop();
      sound3.loop();
    }
  } else {
    textSize(50);
    text("Score:"+score, 450, 50);
    fill(255, 0, 0);
    ellipse(appleX, appleY, 80, 80);
    fill(255, 255, 0);
    text(applekey, appleX, appleY);
    appleX+=appleVX;//按照運動速度，X往右移
    appleY+=appleVY;//按照運動速度，Y也會移動
    appleVY+=0.98;//0.98重力加速度(移動的速度會受到加速度影響)
    if (appleX>600||appleX<0||appleY>550) {//當蘋果太右邊時，重設蘋果位置與速度
      randomApple();
    }
  }
}

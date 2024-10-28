//week08_07_RPG_eat_good
int [][]floor={
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,19, 3,22, 3,22, 9, 2, 2, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,11, 3, 9, 3,26,16,26, 3, 3, 6, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 6, 2, 3,19,26,16, 3,10,13,10, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,11, 3, 2, 3, 3, 3, 3, 3, 2,10,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,18, 3, 2, 2,24, 10, 2, 2, 2,27,10, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,17, 3, 3,25, 3, 3, 3, 3, 2,10,10, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,16,12, 3,25, 3, 2, 2, 2,13,14,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 3, 3, 3,24, 3, 2, 3, 2, 3, 6, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 2, 3, 2, 3, 2, 3, 2, 2, 2, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,20,23, 2, 2, 2, 2, 3, 2, 3,21, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
};
PImage img, user;
PImage []fimg=new PImage[40];
void setup() {
  size(640, 480);
  img=loadImage("640x480.png");
  user=loadImage("15.png");
  for (int i=1; i<=27; i++)fimg[i]=loadImage(i+".png");
}
int userI=11, userJ=16;
void draw() {
  //background(img);
  for (int i=0; i<floor.length; i++) {
    for (int j=0; j<20; j++) {
      int now=floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16);
  textSize(30);
  text("Level: "+level, 16, 90);
  textSize(20);
  text("Live: "+live, 16, 140);
  text("Attack: "+att, 16, 170);
  text("Defense: "+def, 16, 200);
  text("MagicDef: "+mdef, 16, 230);
  text("Exp: "+exp, 16, 260);
  text("Coins: "+coin, 16, 290);
  image(user, userJ*32, userI*32);
  if (gameOver)background(0, 255, 0);
}
int level = 1, live=2693, att=14, def=16,mdef=10,exp=72,coin=72;
boolean gameOver = false;
void keyPressed() {
  int newI=userI, newJ=userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if (floor[newI][newJ]!=1&&floor[newI][newJ]!=3) {
    userI=newI;
    userJ=newJ;
    if (floor[newI][newJ]==21||floor[newI][newJ]==20)gameOver=true;
    floor[userI][userJ]=2;
  }
}

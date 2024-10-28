//week08_06_RPG_wall_detection
int [][]floor={
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,19, 3,22, 3,22, 9, 2, 2, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3,22, 9, 2, 2, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,11, 3, 9, 3,22, 9, 2, 3, 3, 6, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 6, 2, 3,22, 9, 2, 3, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,11, 3, 2, 3, 3, 3, 3, 3, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,18, 3, 2, 2,22, 9, 2, 2, 2, 9,16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,17, 3, 3, 2, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,16,12, 3, 2, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 3, 3, 3, 2, 9, 9, 9, 2, 3, 6, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 2, 3, 2, 9, 9, 9, 2, 2, 2, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1,20,23, 2, 2, 9, 9, 9, 2, 3,21, 3, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
};
PImage img, user;
PImage []fimg=new PImage[40];
void setup() {
  size(640, 480);
  img=loadImage("640x480.png");
  user=loadImage("15.png");
  for (int i=1; i<=25; i++)fimg[i]=loadImage(i+".png");
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
  image(user, userJ*32, userI*32);
}
void keyPressed() {
  int newI=userI,newJ=userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if(floor[newI][newJ]!=1&&floor[newI][newJ]!=3){
    userI=newI;
    userJ=newJ;
  }
}

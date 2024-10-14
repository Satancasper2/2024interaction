//week06_01_schulte_table01_line_fill_textSize_text_for
void setup(){
  size(500,500);
}
void draw(){
  background(#FFFFF2);
  for(int i=100;i<=400;i+=100){
    line(0,i,500,i);
    line(i,0,i,500);
  }
  fill(0);//黑色字
  textSize(50);
  textAlign(CENTER,CENTER);
  for(int y=50;y<=450;y+=100){
    text("1",50,y);
    text("1",150,y);
    text("1",250,y);
    text("1",350,y);
    text("1",450,y);
  }
}

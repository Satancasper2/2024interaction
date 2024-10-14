//week06_04_schulte_table04_not_repeat_random_array_while
int [] used = new int[26];
int [][] table = new int[5][5];
int i=0,j=0;
void setup(){
  size(500,500);
  textSize(50);
  textAlign(CENTER,CENTER);
  for(int i=0;i<5;i++){
   for(int j=0;j<5;j++){
     int now = int(random(1,26));
     while(used[now]==1)now=int(random(1,26));
     table[i][j]=now;
     used[now]=1;
   } 
  }
}
void draw(){
  for(int i=0;i<5;i++){
    for(int j=0;j<5;j++){
      fill(255);rect(j*100,i*100,100,100);
      fill(0);text(""+table[i][j],50+j*100,50+i*100);
    }
  }
}

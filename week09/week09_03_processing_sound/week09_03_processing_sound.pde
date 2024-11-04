//week09_03_processing_sound
import processing.sound.*;//使用外掛
SoundFile sound;
void setup(){
  size(500,500);
  sound = new SoundFile(this,"In Game Music.mp3");
  //sound.play();//撥放一次
  sound.loop();
}
void draw(){

}

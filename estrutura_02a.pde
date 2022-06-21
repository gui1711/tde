import ddf.minim.*;
Minim minim;
AudioPlayer song;

String audioName = "musicaSLOW.mp3";
String path;
int svar = 1;

void setup(){
  size(600,465);
  background = loadImage("im3.png");
  path = sketchPath(audioName);
  minim = new Minim(this);
  song = minim. loadFile("musicaSLOW.mp3");
  song.play();
  }

void draw(){
  if (svar==1) tela1(); // principal
  if (svar==2) telaJogo(); // 1º nível
  
  println(svar);
}

PImage background;

int playerX = 475;
int playerY = 1;
int playerSpeed = 1;
int playerXwas;
int playerYwas;
int playerW = 10; 
int playerH = 10;

boolean holdUp = false;
boolean holdRight = false;
boolean holdDown = false;
boolean holdLeft = false;

void keyPressed()  {
  if(keyCode == UP) {
    holdUp = true;
  }
  if(keyCode == RIGHT) {
    holdRight = true;
  }
  if(keyCode == DOWN) {
    holdDown = true;
  }
  if(keyCode == LEFT) {
    holdLeft = true;
  }
}

void keyReleased()  {
  if(keyCode == UP) {
    holdUp = false;
  }
  if(keyCode == RIGHT) {
    holdRight = false;
  }
  if(keyCode == DOWN) {
    holdDown = false;
  }
  if(keyCode == LEFT) {
    holdLeft = false;
  }
}

void movePlayer() {
  if(holdUp) {
   playerY = playerY - playerSpeed; 
  }
    if(holdRight) {
   playerX = playerX + playerSpeed; 
  }
    if(holdDown) {
   playerY = playerY + playerSpeed; 
  }
    if(holdLeft) {
   playerX = playerX - playerSpeed; 
  }
}

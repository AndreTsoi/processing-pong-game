import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer bounce, score, music, win;


 //Pong
 //Andre Tsoi 
 //2-4
 //April 21, 2022
 
 
 //mode framework
 int mode;
 final int INTRO = 1;
 final int GAME = 2;
 final int PAUSE = 3;
 final int GAMEOVER = 4;

 //singleplayer
 boolean AI;
 



 //ent variables
 float leftx, lefty, leftd, rightx, righty, rightd; //paddles
 float ballx, bally, balld; //ball
 float vx, vy;
 
 //scoring variables
 int leftscore, rightscore, timer;
 
 
 //keyboard variables
 boolean wkey, skey, upkey, downkey, pause;
 
 
 
 
 
 void setup() {
   size(800,600);
   
   minim = new Minim(this);
   
   mode = INTRO;
   bounce = minim.loadFile("bounce.mp3");
   score = minim.loadFile("score.mp3");
   music = minim.loadFile("music.mp3");
   win = minim.loadFile("win.mp3");
   
   
   //initialize score
   rightscore = leftscore = 0;
   timer = 55;
   
 
   
   //initialize paddles
   leftx = 0;
   lefty = height/2;
   leftd = 200;
   rightx = width;
   righty = height/2;
   rightd = 200;
   
   
   //initialize ball
   ballx = width/2;
   bally = height/2;
   balld = 100;
   vx = 3;
   vy = 3;
   
   //initialize keyboard
   wkey = skey = upkey = downkey = false;
   pause = false;
   
 }
 
 
 void draw() {
   if (mode == INTRO) {
     intro();
   } else if (mode == GAME) {
     game();
   } else if (mode == PAUSE) {
     pause();
     
   } else if (mode == GAMEOVER) {
     gameover();
     
   } else {
     println("Mode error: " + mode);
   }
   
 }

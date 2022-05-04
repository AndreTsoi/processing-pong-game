void game() {
  win.rewind();
  music.pause();
  
  background(0);
  
  
  
  if (pause == true) {
   mode = PAUSE; 
  } else {
    mode = GAME;
  }
  
  
  //gameover to 3
  if (leftscore == 3 || rightscore == 3) {
   mode = GAMEOVER; 
  }
  
  
  //draw paddles 
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5; 
  if (skey == true) lefty = lefty + 5;

  
  
  if (AI == false) {
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
    
  } else {
    
    if (bally < righty && ballx > 400) {
     righty = righty - 4; 
    } else if (bally > righty && ballx > 400) {
      righty = righty + 4;
      
    }
    
    
    
  }
    
    
  //paddle limit
  if (lefty < 150) {
   lefty = 150; 
  }
  if (lefty > height-150) {
   lefty = height-150; 
  }
  if (righty < 150) {
  righty = 150;
}
  if (righty > height-150) {
   righty = height-150; 
  }
  
  
  
  //ball
  circle(ballx, bally, balld);
  
  //moving of ball
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  }
  
  //bouncing of ball
  //if (ballx < balld/2 || ballx > width - balld/2) vx = vx * -1;
  if (bally < (balld/2)|| bally > height - (balld/2))  vy = vy * -1;
  if (bally > height-50) {
   bally = height-50;
  }
  if (bally < 50) {
   bally = 50; 
  }
  
  
  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  
  //scoreboard
  textSize(50);
  //fill();
  text(leftscore, width/4, 100);
  //fill();
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;
  
  
  
  //scoring
  if (ballx < 0) {
   rightscore++; 
   ballx = width/2;
   bally = height/2;
   timer = 55;
   score.rewind();
   score.play();
  }
  if (ballx> width) {
   leftscore++; 
   ballx = width/2;
   bally = height/2; 
   timer = 55;
   score.rewind();
   score.play();
  }
  
  
  
  
  
  
  
  //collision with paddles
  if (dist(leftx, lefty, ballx, bally) < (balld/2 + leftd/2)) {
    vx = ballx/10 - leftx/10;
    vy = bally/10- lefty/10;
    bounce.rewind();
    bounce.play();
  }
  
  
  if (dist(rightx, righty, ballx, bally) < (balld/2 + rightd/2)) {
   vx = ballx/12 - rightx/12;
   vy = bally/12 - righty/12;
   bounce.rewind();
   bounce.play();
    
  }
  
}

void gameClicks() {
  
  
}

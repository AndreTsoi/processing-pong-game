void intro() {
  
  music.play();
  
  background(0);


  //title text
  fill(255);
  textSize(100);
  text("Pong", 300, 150);


  //singleplayer button

  if (mouseX > 100 & mouseX < 360 && mouseY > 350 && mouseY < 480) {
    fill(211, 211, 211);
  } else {
    fill(255);
  }



  noStroke();
  rect(100, 350, 260, 130);
  fill(0);
  textSize(70);
  text("1P", 180, 440);

  //2player button
  if (mouseX > 460 & mouseX < 720 && mouseY > 350 && mouseY < 480) {
    fill(211, 211, 211);
  } else {
    fill(255);
  }
  rect(460, 350, 260, 130);
  fill(0);
  text("2P", 545, 440);


  fill(255);
}



void introClicks() {

  if (mouseX > 100 & mouseX < 360 && mouseY > 350 && mouseY < 480) {
    vx = 3;
    vy = 3;
    leftscore = 0;
    rightscore = 0;
    AI = true;
    mode = GAME;
  }
  if (mouseX > 460 & mouseX < 720 && mouseY > 350 && mouseY < 480) {
    vx = 3;
    vy = 3;
    leftscore = 0;
    rightscore = 0;
    AI = false;
    mode = GAME;
  }
}

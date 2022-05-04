void gameover() {
  
  
  win.play();
  
  if (leftscore > rightscore) {
     text("Left wins!", 106, 315);
    
  } else {
    text("Right wins!", 480, 315);
    
    
  }
  
  //exit button
  
  noStroke();  
  if (mouseX > 310 && mouseX < 490 && mouseY > 430 && mouseY < 530) {
   fill(211, 211, 211); 
  } else {
   fill(255); 
  }
  rect(310, 430, 180, 100);
  fill(0);
  textSize(70);
  text("Exit", 342, 502);

  
  
 
  fill(255);
  textSize(50);
  
  
  
  
  
}

void gameoverClicks() {
  if (mouseX > 310 && mouseX < 490 && mouseY > 430 && mouseY < 530) {
   mode = INTRO; 
  }
  
  
}

int borderStroke = 6;
Target[] targets = new Target[3]; //initialized array
boolean rectOver = false;
public PVector pos;
int begin; 
int duration =60;
int time = 60;
int score= 0;

void setup() {
  size(600, 600);
  fill(0);
  spawnTargets();
    frameRate(60);
    begin = millis();  

}



void draw() {
  background(255);
  fill(112, 109, 101);
  System.out.println("Score: "+score);
  text("Score: "+score,500, 30); 
    if (time > 0){  
    time = duration - (millis() - begin)/1000;
    text("Time: "+time, 20, 30);
    }
     if(time==0){ //Check if the timer finished countdown
   textAlign(CENTER, CENTER);
      textSize(48);
      text("GAME OVER", width/2, height/2);
      noLoop();
     }
     
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
  for (int i = 0; i < targets.length; i++) {
    targets[i].show();
  }
}
void mousePressed() {
  if (overRect( targets[0].pos.x, targets[0].pos.y, 65, 65)) {
    targets[0].pos.x = (int)random(width-35);
    targets[0].pos.y = (int)random(width-35);
          score++;
  }
  if (overRect( targets[1].pos.x, targets[1].pos.y, 65, 65)) {
    targets[1].pos.x = (int)random(width-35);
    targets[1].pos.y = (int)random(width-35);
         score++;
  }
  if (overRect( targets[2].pos.x, targets[2].pos.y, 65, 65)) {
    targets[2].pos.x = (int)random(width-35);
    targets[2].pos.y = (int)random(width-35);
          score++;
  }
}

public boolean overRect(float x, float y, int w, int h) {
  if (mouseX >= x && mouseX <= x+w &&
    mouseY >= y && mouseY <= y+h) {
    return true;
  } else {
    return false;
  }
}



private void spawnTargets() {
  for (int i = 0; i < targets.length; i++) {
    targets[i] = new Target((int)(Math.random()*width), (int)(Math.random()*width));
  }
}

int borderStroke = 6;
Target[] targets = new Target[3]; //initialized array
boolean rectOver = false;
  public PVector pos;

void setup() {
  size(600, 600);
  fill(0);
  spawnTargets();
}



void draw() {
  background(255);
  fill(112, 109, 101);
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
  for (int i = 0; i < targets.length; i++) {
    targets[i].show();
  }
}
void mousePressed() {
  if (overRect( targets[0].x,targets[0].y,65,65)) {
    targets[0].x = (int)random(pos.x*width);
    targets[0].y = (int)random(pos.y*width);
  }
}

public boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
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

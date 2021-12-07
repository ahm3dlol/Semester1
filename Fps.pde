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
void mouseClicked() {
  if (overRect( targets[0].pos.x, targets[0].pos.y, 65, 65)) {
    targets[0].pos.x = (int)random(width-2);
    targets[0].pos.y = (int)random(width-2);
  }
  if (overRect( targets[1].pos.x, targets[1].pos.y, 65, 65)) {
    targets[1].pos.x = (int)random(width-2);
    targets[1].pos.y = (int)random(width-2);
  }
  if (overRect( targets[2].pos.x, targets[2].pos.y, 65, 65)) {
    targets[2].pos.x = (int)random(width-2);
    targets[2].pos.y = (int)random(width-2);
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

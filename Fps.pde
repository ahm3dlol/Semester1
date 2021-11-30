int borderStroke = 6;
Target[] targets = new Target[3]; //initialized array

void setup() {
  size(600, 600);
  fill(0);
spawnTargets(); 
}
  


void draw() {
  background(255);
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
for (int i = 0; i < targets.length; i++) {
    targets[i].show();
}
}

private void spawnTargets() {
  for (int i = 0; i < targets.length; i++) {
    targets[i] = new Target((int)(Math.random()*width), (int)(Math.random()*width));
  }
}

int borderStroke = 6;

void setup() {
  size(600, 600);
  fill(0);
}

void draw() {
  background(255);
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
}

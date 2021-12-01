int borderStroke = 6;
Target t1;
Target t2;

void setup() {
  size(600, 600);
  fill(0);
  t1 = new Target((int)(Math.random()*width), (int)(Math.random()*height));
    t2 = new Target((int)(Math.random()*width), (int)(Math.random()*height));

}
  


void draw() {
  background(255);
  rect(0, 0, width, borderStroke); // Top
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
t1.show();
t2.show();
}

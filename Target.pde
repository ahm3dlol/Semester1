PShape s;

public class Target {
 
  private PVector pos;
  private final int SIZE = 65;

  public Target(int x, int y) {
   
    pos = new PVector(x, y);
  s = createShape();
  s.beginShape();
  s.fill(0);
  s.stroke(255);
  s.strokeWeight(2);
  // Exterior part of shape
 s.vertex(-40+pos.x,-40+pos.y);
s.vertex(40+pos.x,-40+pos.y);
s.vertex(40+pos.x,40+pos.y);
s.vertex(-40+pos.x,40+pos.y);
s.vertex(-40+pos.x,-40+pos.y);

  // Interior part of shape
  s.beginContour();
  s.vertex(-3+pos.x,-3+pos.y);
  s.vertex(-3+pos.x,3+pos.y);
  s.vertex(3+pos.x,3+pos.y);
  s.vertex(3+pos.x,-3+pos.y);
  s.endContour();
  
  // Finishing off shape
  s.endShape(CLOSE);
}
  public void show() {
    fill(93, 91, 99);
      shape(s);

  }
  
}

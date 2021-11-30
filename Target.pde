public class Target {
  private PVector pos;
  private final int SIZE = 65;

  public Target(int x, int y) {
    pos = new PVector(x, y);
  }

  public void show() {
    fill(93, 91, 99);
    rect(pos.x, pos.y, SIZE,SIZE);
  }
  
}

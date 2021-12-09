public class Target {
  public PVector pos;
  private final int SIZE = 65;


  public Target(int x, int y) {
    pos = new PVector(x, y);
  }

  public void show() {
    fill(169, 189, 138);
    rect(pos.x, pos.y, SIZE, SIZE);//spawns rectangles
  }
  
}

int borderStroke = 6;
Target[] targets = new Target[3]; //initialized array
boolean rectOver = false;
public PVector pos;
int begin; 
int duration =5;
int time = 10;
int score= 0;
  PrintWriter output;
  ArrayList<HighScoreTuplet> highScores = new ArrayList <>(); // The variable that will contain your high scores list




void setup() {
  size(600, 600);
   output = createWriter("positions.txt"); 
  fill(0);
  spawnTargets();
    frameRate(60);// wanted game to run more smoother
    begin = millis(); 
  parseFile();

}



void draw() {
  background(255);
  fill(112, 109, 101);
  System.out.println("Score: "+score);//display score
  highScores.add();
  text("Score: "+score,500, 30); 
    if (time > 0){  
    time = duration - (millis() - begin)/1000;//stopwatch
    text("Time: "+time, 20, 30);
    }
     if(time==0){ //Check if the timer finished countdown
   textAlign(CENTER, CENTER);
      textSize(48);
      text("GAME OVER", width/2, height/2);
 for (int i = 0; i < highScores.size(); i++) {
    text(highScores.get(i).name + " - " + highScores.get(i).score,200,200);
  }


         output.println(score); // Write the coordinate to the file
       output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
       noLoop();
        }
     
  rect(0, 0, width, borderStroke); // border creation
  rect(width-borderStroke, 0, borderStroke, height); // Right
  rect(0, height-borderStroke, width, borderStroke); // Bottom
  rect(0, 0, borderStroke, height); // Left
  for (int i = 0; i < targets.length; i++) {
    targets[i].show();
  }
}
void mousePressed() {  //when clicked change positions  
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


public boolean overRect(float x, float y, int w, int h) { //checks if mouse is over object
  if (mouseX >= x && mouseX <= x+w &&
    mouseY >= y && mouseY <= y+h) {
    return true;
  } else {
    return false;
  }
}
void parseFile() {
  // Open the file from the createWriter() example
  BufferedReader reader = createReader("positions.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, TAB);
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      point(x, y);
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
} 
class HighScoreTuplet {
  final public String name;
  final public int score;
  
  HighScoreTuplet(final String name, int score) {
    this.name = name;
    this.score = score;
  }
}


private void spawnTargets() {
  for (int i = 0; i < targets.length; i++) {
    targets[i] = new Target((int)(Math.random()*width), (int)(Math.random()*width));
  }
}

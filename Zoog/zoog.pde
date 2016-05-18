void setup() {
 size(400,400);
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(150);
  rect(mouseX,mouseY,20,100);
  stroke(0);
  fill(255);
  ellipse(100,70,60,60);
  fill(0);
  ellipse(81,70,16,32);
  ellipse(119,70,16,32);
  stroke(0);
  line(90,150,80,160);
  line(110,150,120,160);
}

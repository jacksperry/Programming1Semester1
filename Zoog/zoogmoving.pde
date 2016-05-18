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
  ellipse(mouseX,mouseY-30,60,60);
  fill(0);
  ellipse(mouseX-19,mouseY-30,16,32);
  ellipse(mouseX+19,mouseY-30,16,32);
  stroke(0);
  line(mouseX-10,mouseY+50,mouseX-20,mouseY+60);
  line(mouseX+10,mouseY+50,mouseX+20,mouseY+60);
}

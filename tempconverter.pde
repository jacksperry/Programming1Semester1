void setup () {}

void settings() {
  size(600,600);
}

void draw() {
  background(255,175,175);
  line(0,100,width,100);
  line(0,105,0,95);
  line(50,105,50,95);
  line(100,105,100,95);
  line(150,105,150,95);
  line(200,105,200,95);
  line(250,105,250,95);
  line(300,105,300,95);
  line(350,105,350,95);
  line(400,105,400,95);
  line(450,105,450,95);
  line(500,105,500,95);
  line(550,105,550,95);
  line(600,105,600,95);
  
   
  ellipse(mouseX,100,3,3);
  fill(0);
  text("Donuts = " + mouseX + "   Dozens = " + tempConverter(mouseX),50,50);
  text("Jack Sperry",50,10);
  text("Move mouse left or \n right to calculate \n conversion",50,160);
  text("0",50,90);
  text("50",50,90);
  text("100",100,90);
  text("150",150,90);
  text("200",200,90);
  text("250",250,90);
  text("300",300,90);
  text("350",350,90);
  text("400",400,90);
  text("450",450,90);
  text("500",500,90);
  text("550",550,90);
  text("600",600,90);
  
  
  
  
}

float tempConverter(float Doh) {
  float Doz= (Doh/12.0);
  return Doz;
}
SpaceShip[] mySpaceShip = new SpaceShip[10];
SpaceShip mySpaceShip1;

void setup() {
  size(600,600);
  mySpaceShip1 = new SpaceShip(128,random(width),random(height),random(100));
  
  for(int i=0; i< mySpaceShip.length; i++){
    mySpaceShip[i] = new SpaceShip(128,random(width),random(height),random(100));
}
}
void draw() {
  background(255,143,80);
  mySpaceShip1.display();
  mySpaceShip1.drive();
  
  for(int i=0; i< mySpaceShip.length; i++){
    mySpaceShip[i].display();
    mySpaceShip[i].drive();
  }
}
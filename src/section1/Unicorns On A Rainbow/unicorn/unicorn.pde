PImage rainbow;
PImage unicorn;

void setup(){
  rainbow = loadImage ("rainbow2.jpg");
  size(1000,1000);
  rainbow.resize(1000,1000);
  unicorn = loadImage ("asdf2.png");
  unicorn.resize(200,200);
}
void draw(){
  background(rainbow);
  image (unicorn,mouseX,mouseY);
}

int ballX=0;

  void setup() {
  size (1000, 1000);
  background(#FFFFFF);
}


void draw() {
  background (#FFFFFF);
  fill(#83FF00);
  ballX+=5;
  ellipse(ballX, 500, 50,50);
}

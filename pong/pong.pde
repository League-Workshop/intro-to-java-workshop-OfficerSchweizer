int ballX=500;
int xSpeed=10;
int ySpeed=10;
int ballY=500;
int paddleX = 100;
int paddleY = mouseY;
int paddleLength = 200;

void setup() {
  size (1000, 800);
  background(#000000);
}

void draw() {
  if (ballX > width) {
    xSpeed = -xSpeed;
  }
  if (ballX < 0) {
    xSpeed = -xSpeed;
  }
  if (ballY > height) {
    ySpeed = -ySpeed;
  }
  if (ballY < 0 ) {
    ySpeed = -ySpeed;
  }

  background (#000000);
  fill(#83FF00);
  ballX+=xSpeed;
  ballY+=ySpeed;
  ellipse(ballX, ballY, 50, 50);
  fill(#FFFFFF);
  rect(paddleX, mouseY-100, -30, 200);
  intersects(ballX, ballY, mouseY-100, paddleLength);
}

void intersects (int ballX, int ballY, int paddleY, int paddleLength) {
  if (ballX < (paddleX+30) && ballY > paddleY && ballY < paddleY + paddleLength) {
    xSpeed=-xSpeed;
    ySpeed=-ySpeed;
  }
}

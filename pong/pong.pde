int ballX=500;
int xSpeed=7;
int ballY=500;
int paddleX = 100;
int paddleY = mouseY;
int paddleLength = 200;

void setup() {
  size (1000, 1000);
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
    xSpeed = -xSpeed;
  }
  background (#000000);
  fill(#83FF00);
  ballX+=xSpeed;
  ellipse(ballX, 500, 50, 50);
  fill(#FFFFFF);
  rect(paddleX, mouseY, -30, 200);
  }
  
boolean intersects(int ballX, int ballY, int paddleX, int paddleY,
int paddleLength) {
    if (ballX < paddleX && ballY > paddleY && ballY < paddleY)
        return true;
    else
        return false;
}

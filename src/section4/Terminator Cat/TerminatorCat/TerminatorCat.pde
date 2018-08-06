PImage catPic;
int x=524;
int y=251;
int x2=719;
int y2=279;
int acceleration = 5;


void setup(){
noStroke();
size(1280,720);
catPic = loadImage ("cat.jpg");
catPic.resize(width, height);
background(catPic);
}


void draw(){
if(mousePressed){
println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");
fill(#FF0000);
ellipse(x,y,30,30);
ellipse(x2,y2,30,30);
 if(y>height) {
  background(catPic);
  x=524;
  y=251;
  if(y2>height) {
  background(catPic);
  x2=724;
  y2=279;
}
}
   }
}
void keyPressed() {
  x=x+2*acceleration;
  y=y+2*acceleration;
  x2=x2+2*acceleration;
  y2=y2+2*acceleration;
}

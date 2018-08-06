PImage mustache;
PImage friend;

void setup(){
friend = loadImage("qwerty.png");
size(800, 600);
friend.resize(width,height);
 mustache = loadImage("mustache.png");
 mustache.resize(200,200);
}


void draw(){
  background (friend);
if (mousePressed){
background (friend);
image (mustache, mouseX, mouseY);
  }
}

void setup(){
  size(800,800);
}
void draw(){
  background(#FFFFFF);
  ellipse(mouseX,mouseY,50,50);
  if(mousePressed){
    fill(#000EFF);
  }
      else{
        fill(#FFFFFF);
      }
    
  
}

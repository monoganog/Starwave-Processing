Star[] stars = new Star[1000];
float speed;
float maxSpeed = 60;

void setup(){
  size(800,800);
  for (int i = 0; i< stars.length; i++){
    stars[i] = new Star();
    
  }

}

void draw(){
  
  speed = map(mouseX,0 ,width,0,maxSpeed);
  background(0);
  translate(width/2,height/2);
  for(int i = 0; i < stars.length; i++){
    
    stars[i].update();
    stars[i].show();
    
  }
    filter(DILATE);
    
}

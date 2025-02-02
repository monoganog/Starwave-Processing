class Star  {
  float x;
  float y;
  float z;
  float pz;
  float starSize;
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
    pz = z;
    starSize = random(0,10);
  }

  
  void update(){
    //println(z);
    z=z-speed;
    if(z < 1){
      //
      z = width;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      pz = z;
    }
  }
  
  
  void show(){
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z ,0,width, starSize,0);
    
    float c = map(speed,0,maxSpeed,255,180);
    
    color starCol = color(c,c,255);
    fill(starCol);
    ellipse(sx,sy,r,r);
    
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    stroke(starCol);
    strokeWeight(r);
    line(px,py,sx,sy);
  }
}

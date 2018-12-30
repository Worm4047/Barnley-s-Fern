void setup(){

  size(600, 600);
  background(0);
}

float x = 0, y = 0;

void nextPoint(){
float nextx = 0;
  float nexty = 0;
  float r = random(1);
  if(r <= 0.01){
     nextx =  0;
     nexty = 0.16*y;  
  }
  else if(r <= 0.86){
     nextx =  0.85*x + 0.04*y;
     nexty = -0.04*x + 0.85*y + 1.6;     
  }
 
  else if(r <= 0.93){
    nextx =  0.20*x + -0.26*y;
    nexty = 0.23*x + 0.22*y + 1.6;   
  }

  else{
   nextx = -0.15*x + 0.28*y;
   nexty =  0.26*x + 0.24*y + 0.44;  
  }
 
  x = nextx;
  y = nexty;
}

void drawPoint(){
  
  float c1 = random(255);
   float c2 = random(255);
    float c3 = random(255);
  stroke(c1,c2,c3);
  strokeWeight(1);
  
  // for mapping x & y points onto screen size
  float px = map(x, -2.1820,2.6558, 0, width);
  float py = map(y, 0, 9.9983, height, 0);
  point(px,py);
}

void draw(){
  
  //To render in iterations of 100
  for(int i=0;i<100;i++){
    drawPoint();
    nextPoint();  
  }
}

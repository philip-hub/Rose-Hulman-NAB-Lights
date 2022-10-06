

  int r =200;
  int g =50;
  int b =50;
  color bColor = color(r, g, b);
  
  boolean rc = true;
  boolean gc = true;
  boolean bc = true;
  
  int rMax = 200;
  int gMax = 200;
  int bMax = 150;
  
  int rMin = 50;
  int gMin = 50;
  int bMin = 50;
  
  
  int rDiff = 1;
  int gDiff =5;
  int bDiff = 10;


void setup() {
  size(300, 600);
}
boolean c = true;

void draw() {
  background(0);

  fill(bColor); 
  rect(0, 0, 300, 600);
  bColor = color(r, g, b);
  
  delay(200);
  
  //r
  if(r<rMax && rc == true){
     r = r +rDiff;
  }
  if(r >=rMax){
    rc = false;
  }
  if(r>0 && rc == false){
     r = r -rDiff;
     rc = false;
  }
  
  if (r<=rMin){
    rc = true;
  }
  
  
  //g
 if(g<gMax && gc == true){
     g = g +gDiff;
     
  }
  if(g >=gMax){
    gc = false;
  }
  if(g>gMin && gc == false){
     g = g -gDiff;
     gc = false;
  }
  
  if (g<=gMin){
    gc = true;
  }
  
  //g
   if(b<bMax && bc == true){
     b = b + bDiff;
     
  }
  if(b >=bMax){
    bc = false;
  }
  if(b>bMin && bc == false){
     b = b - bDiff;
     bc = false;
  }
  
  if (b<=bMin){
    bc = true;
  }
  
}

class Module {
  int rStep = 2;
  int aStep = 3;
  
  float r;
  float x, y;
  int alpha, alphaFinal;
  
  int unit;
  int xDirection = 1;
  int yDirection = 1;
  float speed; 
  
  
  // Contructor
  Module(int xTemp, int yTemp, int sizeTemp) {
 
    x = xTemp; // 
    y = yTemp;
    r = 0;
    alphaFinal = sizeTemp; // The ending radius of the circle.
    alpha = 255;
    
  }
  
  // Custom method for updating the variables
  boolean update() {
    if( alpha-aStep>alphaFinal) {
      r+=rStep;
      alpha-=aStep;
      return true;
    }
    else return false;
    
  }
  
  // Custom method for drawing the object
  void display() {
    fill(alpha);
    circle(x, y, r);
  }
}

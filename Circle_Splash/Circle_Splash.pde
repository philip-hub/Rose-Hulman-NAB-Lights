import org.guilhermesilveira.*;

/**
 * Array Objects. 
 * 
 * Demonstrates the syntax for creating an array of custom objects. 
 */

int unit = 80; // The "size" of an object. Also the size of a cell in this wacky grid.
int count;
int randomAddTimeRange = 1000; // In milliseconds
int lastTime = 0;
int randomAddTime = 0;
ArrayList<Module> mods2 = new ArrayList<Module>();
ArrayList<Module> toDestroy = new ArrayList<Module>();

void setup() {
  size(640, 360);
  noStroke();
   
   int lastTime = millis();
}


void draw() {
  background(0); // Wipe the screen of pesky objects
  delay(50);
  
  if(millis()-lastTime > randomAddTime){
    Module thingy = new Module((int)random(640),(int)random(360),10);
  mods2.add(thingy);
  
  lastTime = millis();
  randomAddTime = (int)random(randomAddTimeRange);
  }
  
  
  //Module thingy = new Module((int)random(640),(int)random(360),100);
  //mods2.add(thingy);
  for (Module mod : mods2){
    boolean drewSomething =  mod.update();
    mod.display();
    if(!drewSomething){
    toDestroy.add(mod);
    }
    
  }
  
  // Remove all circles that tell you to
  for (Module mod : toDestroy){
  mods2.remove(mod);
  }
  toDestroy.clear();
  
  
  
}

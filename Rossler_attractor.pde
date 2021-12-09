float x = 2;
float y = 0;
float z = 0;

float a = 0.2;
float b = 0.2; 
float c = 5.7;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(800, 600, P3D);
  colorMode(HSB); 
  
}

void draw() {
  background(0);
  float dt = 0.01;
  
  float dx = ((-y) - z) * dt;
  float dy = (x + (a*y)) * dt;
  float dz = (b + (z * (x-c))) * dt;
  
  x = x + dx;
  y = y + dy;
  z = z + dz; 

  points.add(new PVector(x, y, z));
  
  translate(width/2,height/2);
  scale(5);
  stroke(255);
  noFill();
  
  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y, v.z);
    
    hu += 0.1;
      if (hu>255) {
        hu = 0;
        
      }
      
  }

endShape();
  point(x,y,z);
  
  println(x,y,z);
}

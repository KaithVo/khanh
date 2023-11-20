ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
   for (int x = particles.size()-1 ; x >=0 ; x--){//loop backward
    particles.get(x).update();
    particles.get(x).display();
    if (particles.get(x).position.y > 400) {//the particles out of the bootom of the canvasd
      particles.remove(x);
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}

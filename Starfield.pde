Particle[] bobby;
void setup()
{
  size(400,400);
  bobby = new Particle[200];
  for(int i = 0; i < bobby.length; i++)
    bobby[i] = new OddballParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < bobby.length; i++) {
    bobby[i].show();
    bobby[i].move();
  }
}
void mousePressed()
{
  for(int i = 0; i < bobby.length; i++) {
    bobby[i].reset();
    color myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
}
class Particle
{
  double myX,myY,mySpeed,myAngle;
  color myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  Particle() {
    myX = 200;
    myY = 200;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*5;
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((int)myX,(int)myY,5,5);
  }
  void reset() {
    myX = 200;
    myY = 200;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*5;
  }
}
class OddballParticle extends Particle
{
  double myX,myY,mySpeed,myAngle;
  color myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    OddballParticle() {
      myX = myY = 200;
      myAngle = Math.random()*(2*Math.PI);
      mySpeed=Math.random()*5;
    }
    void move() {
      myX = myX + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)*mySpeed;
    }
    void show() {
      noStroke();
      fill(myColor);
      ellipse((int)myX,(int)myY,5,5);
    }
    void reset() {
      myX = mouseX;
      myY = mouseY;
      myAngle = Math.random()*(2*Math.PI);
      mySpeed=Math.random()*5;
    }
}
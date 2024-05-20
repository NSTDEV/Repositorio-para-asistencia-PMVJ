class Orb {
  private float angle, speed, radio;
  private PVector position;
  private PImage sprite;

  Orb(float angle, float radio, PVector position) {
    this.angle = angle;
    this.radio = radio;
    this.position = position;
    speed = 0.03;
    sprite = loadImage("/assets/Orb.png");
  }

  void actualizar() {
    angle -= speed;
  }

  void display() {
    float yOrbit = radio * sin(angle) + position.y;
    float xOrbit = radio * cos(angle) + position.x;

    //Orbita remarcada con blanco
    noFill();
    stroke(#ffffff);
    strokeWeight(0.5);
    ellipse(position.x, position.y, 2 * radio, 2 * radio);
    image(sprite, xOrbit, yOrbit, 20, 20);
  }
}

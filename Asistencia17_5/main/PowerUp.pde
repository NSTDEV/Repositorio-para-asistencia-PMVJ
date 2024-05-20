class PowerUp {
  private float x, y, side;
  private PImage sprite;
  private boolean pressed;

  PowerUp(float x, float y, float side) {
    this.x = x;
    this.y = y;
    this.side = side;
    sprite = loadImage("/assets/PowerUp.png");
    pressed = false;
  }

  void display() {
    if (pressed) {
      image(sprite, x, y, 80, 60);
    } else {
      image(sprite, x, y, 80, 80);
    }
  }
}

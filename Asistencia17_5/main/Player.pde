class Player {
  private PVector position;
  private float size;
  private PImage sprite;
  protected boolean pickedPowerUp;

  Player() {
    position = new PVector(mouseX, mouseY);
    size = 55;
    sprite = loadImage("/assets/Player.png");
    pickedPowerUp = false;
  }

  boolean powerUpCollision(PowerUp powerUp) {
    float distance = dist(position.x, position.y, powerUp.x, powerUp.y);
    return distance < size / 2 + powerUp.side / 2;
  }

  void updatePosition() {
    position.set(mouseX, mouseY);
  }

  void display() {
    imageMode(CENTER);
    image(sprite, position.x, position.y, size, size);
  }
}

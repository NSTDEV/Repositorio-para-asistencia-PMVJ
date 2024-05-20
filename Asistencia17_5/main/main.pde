Player player;
PowerUp powerUp;
ArrayList<Orb> orbs;

void setup() {
  size(900, 600);
  player = new Player();
  powerUp = new PowerUp(width / 2, height / 2, 40);
  orbs = new ArrayList<Orb>();
  noCursor();
}

void draw() {
  background(#8bac0f);
  powerUp.display();

  if (player.powerUpCollision(powerUp) && !player.pickedPowerUp) {
    powerUp.pressed = true;
    player.pickedPowerUp = true;
    orbs.add(new Orb(random(50, 100), random(50, 100), player.position));
  }

  if (!player.powerUpCollision(powerUp)) {
    player.pickedPowerUp = false;
    powerUp.pressed = false;
  }

  for (Orb orb : orbs) {
    orb.display();
    orb.actualizar();
  }

  player.display();
  player.updatePosition();
}

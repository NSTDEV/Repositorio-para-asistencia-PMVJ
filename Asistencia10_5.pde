float m = -2; // Pendiente
float b = 20; // Intersección en y

float centroHorizontal, centroVertical;

void setup() {
  size(800, 600);
  centroHorizontal = width / 2;
  centroVertical = height / 2;
}

void draw() {
  background(0);
  stroke(155);
  strokeWeight(1);
  
  // Líneas centrales
  line(0, centroVertical, width, centroVertical);
  line(centroHorizontal, 0, centroHorizontal, height);
  
  funcionLineal();
}

void funcionLineal(){
  float x1 = -centroHorizontal;
  float y1 = m * x1 + (b * 10); //Multiplico a b * 10 para que se note más al ejecutarse pero no es parte de la formula
  float x2 = centroHorizontal;
  float y2 = m * x2 + (b * 10); //Multiplico a b * 10 para que se note más al ejecutarse pero no es parte de la formula
  
  stroke(255);
  strokeWeight(3);
  line(centroHorizontal + x1, centroVertical - y1, centroHorizontal + x2, centroVertical - y2);
}

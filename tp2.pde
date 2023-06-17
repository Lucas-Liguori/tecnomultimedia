/*
Lucas Liguori
Comision 5
 */
int ancho, alto;
int cantidad =  10;
int cantidadXDeModulos;
int cantidadYDeModulos;
int anchoDeModulo;
int altoDeModulo;
PImage art;
void setup() {
  size(800, 400);
  art = loadImage("arte op.jpg");
  rectMode(CENTER);
  cantidadXDeModulos = 1;
  cantidadYDeModulos = 1;

  anchoDeModulo = width/cantidadXDeModulos;
  altoDeModulo = height/cantidadYDeModulos;

  alto = altoDeModulo/cantidad;
  ancho = anchoDeModulo/cantidad;
}

void draw() {
  background(255);
  image(art, 0,0);
  for (int i = 0; i < cantidadXDeModulos; i++) {
    for (int j = 0; j < cantidadYDeModulos; j++) {
      dibujarModulo(i, j);
  }
  }
 }

void modulo(int x, int pX, int pY) {
  push();
  if (x % 2 == 0) {
    fill(0);
  } else {

  }
  translate(pX * anchoDeModulo, pY * altoDeModulo);
  rect(0, 0, ancho * x, alto * x);
  pop();


//trabajo incompleto//

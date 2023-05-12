int Pantalla;
String Texto1;
String Texto2;
String Texto3;
PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
float PosX;
float PosY;
float velocidad;
int tiempo;
float tamTexto;
PFont fuente;
void setup() {

  size(640, 480);
  
  fuente = loadFont("Edwardian.vlw");
  textFont(fuente);
  Imagen1 = loadImage("sierra1.jpg");
  Imagen2 = loadImage("sierra2.png");
  Imagen3 = loadImage("sierra3.png");
  
  Texto1 = "Las sierras son herramientas\n manuales diseñadas para cortar\n superficies de diversos materiales";
  Texto2 = "Generalmente se componen de un bastidor o soporte\n en forma de arco, fijo o ajustable;\n una hoja, un mango recto o tipo pistola y una tuerca\n de mariposa para fijarla.";
  Texto3 = "La hoja de la sierra es una cinta\n de acero de alta calidad, templado;\n tiene un orificio en cada extremo para\n sujetarla en el pasador del bastidor;\n uno de sus bordes está dentado.";
}

void draw() {

  switch(Pantalla) {
  case 0:
  background(0);
    textAlign(LEFT);
    textSize(40);
    PosX = width/2;
    PosY = 0;
    Pantalla = 0;
    velocidad = 0.05;
    tiempo = 0;
    tamTexto = 12;
    Pantalla = 1;
    break;
  case 1:
    image(Imagen1, 0, 0);
    Imagen1.resize(640, 480);
    tiempo++;
    println("pantalla 1 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 2;
    }
    fill(0);
    text(Texto1, PosX, 200);
    if (width > PosX) {
      PosX -= 1;
    }

    break;

  case 2:
  background(0);
    image(Imagen2, 0, 0);
    Imagen2.resize(640, 480);
    tiempo++;
    println("pantalla 2 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 3;
      PosY = 400;
      velocidad = 0.5;
    }
    if ( 1400 > tiempo) {
      fill(255);
      textSize(tamTexto);
      tamTexto += velocidad;
      text(Texto2, 20, 200);
    }
    break;

  case 3:
background(0);
    textSize(40);
    image(Imagen3, 0, 0);
    Imagen3.resize(640, 480);
    tiempo++;
    println("pantalla 3 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 4;
    }
    fill(255);
    text(Texto3, 40, PosY);
    if (height > PosY) {
      PosY -= velocidad;
    }
    break;

  case 4:
  background(0);
    image(Imagen3, 0, 0);
    Imagen3.resize(640, 480);
    fill(255);
    rect (60, 60, 200, 80);
    fill(0);
    textSize(52);
    textAlign(CENTER);
    text("Reiniciar", 160, 110);
    if (mouseButton==LEFT && mouseX>=60 && mouseX<=260 && mouseY>=60 && mouseY<=140) {
      Pantalla = 0;
    }
    break;
  }
}

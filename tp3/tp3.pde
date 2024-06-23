// cruz, natanael benjamin
// comision 2
//https://youtu.be/CfggNZiZFB0
PImage miFoto;
int cant;
int tamCuadrado;
color relleno;
String texto;
boolean habilitar;

void setup() {
  size(800, 400);
  textSize(20);
  miFoto = loadImage("miFoto.jpg");
  cant = 100;
  tamCuadrado = 50;
  background(0);
  relleno = color(255);
  habilitar = false;
  texto = guiaComandos("mouse de izquierda a derecha", "pulsa d", " pulsa h");
  
}
void draw() {
  background(255);

  //grilla de filas
  int mover = 0;
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {

      dibujarFilas(i, j, mover, relleno);
    }
  }


  image(miFoto, 0, 0, 400, 400);
  
  //guia comandos texto
  if (frameCount/60 >= 2 && frameCount/60 <= 8) {
    fill(255, 0, 0);
    text(texto, 8, 333, 0);
  }
}


void keyPressed() {
  if (key == 'h') {
    frameCount = 0;
    mouseX = 0;
    relleno = color (255);
  }

  if (key == 'd') {
    habilitar = !habilitar;
    if (habilitar) {
      relleno = color(random(255), random(255), random(255));
    } else {
      relleno = color(255, 255, 0);
    }
  }
}

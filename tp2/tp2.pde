// cruz, natanael benjamin
// comision 2
PImage imagenInicio, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10, imagen11;
String estado;
String texto1;
String textoPresentacion;
String textoPresentacion2;
String textoPresentacion3;
String textoBoton;
PFont fuenteNueva;
float tamañoTexto;
color relleno;
int x, y;
int alpha;
int posX, posY, diametro;
float distanciaBoton;

void setup() {
  size(640, 480);
  imagenInicio = loadImage("imagenInicio.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  imagen5 = loadImage("imagen5.jpg");
  imagen6 = loadImage("imagen6.jpg");
  imagen7 = loadImage("imagen7.jpg");
  imagen8 = loadImage("imagen8.jpg");
  imagen9 = loadImage("imagen9.jpg");
  imagen10 = loadImage("imagen10.jpg");
  imagen11 = loadImage("imagen11.jpg");
  
  textSize(32);
  fuenteNueva = loadFont("ErasITC-Bold-48.vlw");
  textFont(fuenteNueva);
  texto1 = "eFooball es una serie de Videojuegos de futbol desarrollada y publicada por Konami. Anteriormente conocida por el sobrenombre de Pro Evolution Soccer (PES).";
  textoPresentacion = "eFootball ofrece una experiencia destacada en graficos y animaciones realistas. Los jugadores y estadios tienen un diseño muy detallado que permiten tener una experiencia visual inmersiva durante los partidos.";
  textoPresentacion2 = "La jugabilidad de eFootball dentro del campo de juego es notable y optima. Entrega un estilo pausado y metodico que busca sentirse lo menos robotico posible para tratar de simular el futbol de la vida real. Los movimientos de los jugadores son fluidos y destaca por su realismo en los movimientos, la mecanica de pase, disparo, y defensa.";
  textoPresentacion3 = "eFootball ofrece una variedad de modos de juego, \nincluyendo partidos amistosos, torneos, \ny modos en linea \ndonde los jugadores pueden enfrentarse \na otros jugadores en partidos competitivos. \nademas pueden personalizar la apariencia de \nsus equipos, \nasi como las tacticas y \nformaciones utilizadas en el campo.";
  tamañoTexto = 23;
  textoBoton = "reiniciar";
  relleno = color(255, 255, 0);
  x = 20;
  y = 152;
  alpha = 255;
  estado = "inicio";
  posX = 581;
  posY = 416;
  diametro = 80; 
  
}  
void draw() {
   background(0);
   
   if(estado == "inicio") {
    image(imagenInicio, 0, 0, 640, 480);
    noStroke();
    fill(255, 255, 0);
    rect(0, 326, 600, 180);
    fill(0, 0, 170);
    rect(7, 333, 550, 140);
    fill(relleno);
    textSize(tamañoTexto);
    textAlign(CENTER, CENTER);
    text(texto1, x, y, 500, 500);
    
    alpha = alpha - 1;
    relleno = color(255, 255, 0, 260 - alpha);
    
     if(frameCount/60 >= 8){
      estado = "presentacion";
     }
  }
   
   if(estado == "presentacion") {
    background(0, 0, 170);
    image(imagen2, 0, 0, 320, 240);
    image(imagen3, 320, 0, 320, 240);
    image(imagen4, 0, 240, 320, 240);
    image(imagen5, 320, 240, 320, 240);
    fill(255, 255, 0, alpha);
    rect(6, 190, 628, 180);
    fill(0, 0, 170, alpha);
    rect(20, 200, 600, 160);
    fill(relleno);
    text(textoPresentacion, 70 , y, 500, 500);
  
    
       if( y > 31){
          y -= 1;
       }
       if (y == 31){
        alpha = alpha + 10;
       }
       if (frameCount/60 >= 18){
         estado = "presentacion2";
       }
     
  } else if(estado == "presentacion2"){
    background(0, 0, 175);
    image(imagen6, 0, 0, 320, 240);
    image(imagen7, 320, 0, 320, 240);
    text(textoPresentacion2, 631 - x , 110,  600, 500);
    
       x += 3;
      
       if(631 - x <= 20){
         x = 610;
       }
     
       if(frameCount/60 >= 32){
       estado = "presentacion3";
       }
     
  } else if(estado == "presentacion3"){
    image(imagen8, 0, 0, 320, 240);
    image(imagen9, 320, 0, 320, 240);
    image(imagen10, 0, 240, 320, 240);
    image(imagen11, 320, 240, 320, 240);
    fill(relleno);
    textAlign (CENTER, CENTER);
    textSize(tamañoTexto - 15);
    text(textoPresentacion3, 325, 250);
    tamañoTexto = tamañoTexto + 0.2;
     
       if(tamañoTexto >= 23){
       relleno = color(255, 255, 0);
       }
       if(tamañoTexto >= 38){
       tamañoTexto = 38;
       relleno = color(0, 255, 255); 
       }
       if(frameCount/60 >= 38){
       //boton reinicio
        textSize(12);
        stroke(0);
        fill(255, 255, 255);
        circle(posX, posY, diametro);
        fill(0);
        text(textoBoton, 582, 413);
        distanciaBoton = dist(mouseX, mouseY, posX, posY);
       }
  }
  
  
}
void mousePressed() {
  if(distanciaBoton < diametro) {
    frameCount = 0;
    estado = "inicio";
    tamañoTexto = 23;
    x = 20;
    y = 152;
    alpha = 255;
  }
  
}

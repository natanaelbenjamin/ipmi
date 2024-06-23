void dibujarFilas (int i, int j, int mover, color relleno) {
  int posX = i*tamCuadrado;
  int posY = j*tamCuadrado;

  float distancia = dist(400, mouseY, posX, posY);
  float transparencia = map(distancia, 0, 800, 255, 0);

  int limite = floor (map(mouseX, 0, -800, 0, 400));

  
  //grilla alternacia blanco y negro par e impar
  if ((i+j)%2 == 0) {
    fill(relleno, transparencia  );
  } else {
    fill(0);
  }
  //filas impares quitando dos fila impares
  // fila 6, fila 8
  if (j%2 != 0 && j != 3 && j != 1) {
    mover = 24 - limite;
    rect(posX + mover, posY, tamCuadrado, tamCuadrado);
  }
  //filas pares quitando dos fila pares
  // fila 1, fila 5
  if (j%2 == 0 && j != 2 && j != 6) {
    mover = 60 + limite;
    rect(posX + mover, posY, tamCuadrado, tamCuadrado);
  }
  //fila 7, fila 3
  if (j == 6 || j == 2) {
    mover = 90 + limite;
    rect(posX + mover, posY, tamCuadrado, tamCuadrado);
  }
  //fila 4, fila 2
  if (j == 3 || j == 1) {
    mover = 24 - limite;
    rect(posX + mover, posY, tamCuadrado, tamCuadrado);
  }
  // borde y grosor
  strokeWeight(3);
  stroke(170);
}

String guiaComandos (String mouse, String letra2, String letra3) {
  String guia = "mover filas: " + mouse + "\ncambia color: " + letra2 + "\nreinicio: " + letra3;
  return guia;
}

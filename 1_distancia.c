/**
 * Un programa que acepta dos argumentos x e y (numeros reales)
 * e imprima la distancia euclídea entre el origen y el punto (x,y)
 */

#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
  int argx = atoi(argv[1]);
  // int(argv[2]), argumentoy;
  int distancia;
  distancia = argx;
  printf("La distancia es:\n",distancia);
  return 0;
}

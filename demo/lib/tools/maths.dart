import 'dart:math';

double calculPuissance(double nombre, double exposant) {
  if (exposant == 0) {
    return 1;
  } else if (exposant < 0) {
    return 1 / calculPuissance(nombre, -exposant);
  } else {
    //3 puissance 4 => 3 x (3 puissance 3)
    return nombre * calculPuissance(nombre, exposant - 1);
  }
}

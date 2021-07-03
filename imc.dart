import 'dart:io';

main() {
  calculoImc();
}

calculoImc() {
  print("=====Digite seu peso=====");
  String? textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  print("=====Digite sua altura=====");
  String? textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura!);

  double result = calcImc(peso, altura);

  imprimirResultado(result);
}

double calcImc(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double result) {
  if (result < 18.5) {
    print("abaixo do peso");
  } else if (result > 18.5 && result < 24.9) {
    print("peso normal");
  } else if (result > 25 && result < 29.9) {
    print("sobrepeso");
  } else if (result > 30 && result < 34.9) {
    print("obesidade grau 1");
  } else if (result > 35 && result < 39.9) {
    print("obesidade grau 2");
  } else {
    print("obesidade grau 3");
  }
}

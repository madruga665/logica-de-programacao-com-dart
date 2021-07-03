import 'dart:io';

main() {
  print("=====Digite seu peso=====");
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso!);

  print("=====Digite sua altura=====");
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  var result = peso / (altura * altura);

  print(result);

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

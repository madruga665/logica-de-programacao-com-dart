import 'dart:io';

main() {
  bool condicao = true;

  while (condicao) {
    print("=== Escreva um Texto ===");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      condicao = false;
      print("=== FIM DO PROGRAMA ===");
    } else {
      print("=== Você digitou: $text ===");
    }
  }
}

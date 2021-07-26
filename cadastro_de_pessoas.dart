import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;

  print('\x1B[2J\x1B[0;0H');

  while (condicao) {
    print('=====DIGITE UM COMANDO=====');

    String? comando = stdin.readLineSync();

    if (comando == 'sair') {
      print('=====PROGRAMA FINALIXADO=====');
      condicao = false;
    } else if (comando == 'cadastro') {
      print('\x1B[2J\x1B[0;0H');
      cadastrar();
    } else if (comando == 'imprimir') {
      print(cadastros);
    } else {
      print('=====COMANDO INVÁLIDO');
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print('=====DIGITE O SEU NOME=====');
  cadastro['nome'] = stdin.readLineSync();

  print('=====DIGITE SUA IDADE=====');
  cadastro['idade'] = stdin.readLineSync();

  print('=====DIGITE SUA CIDADE=====');
  cadastro['cidade'] = stdin.readLineSync();

  print('=====DIGITE O SEU ESTADO=====');
  cadastro['estado'] = stdin.readLineSync();

  cadastros.add(cadastro);
}

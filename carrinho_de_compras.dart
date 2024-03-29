import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print('=====ADICIONE UM PRODUTO=====');
    String? text = stdin.readLineSync();
    if (text == 'sair') {
      print('=====PROGRAMA FINALIZADO=====');
      condicao = false;
    } else if (text == 'imprimir') {
      print('=====LISTA DE PRODUTOS=====');
      imprimir(produtos);
    } else if (text == 'remover') {
      print('=====QUAL ITEM DESEJA REMOVER?=====');
      remover(produtos);
    } else {
      produtos.add(text!);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}

imprimir(produtos) {
  for (var index = 0; index < produtos.length; index += 1) {
    print('ITEM $index - ${produtos[index]}');
  }
}

remover(produtos) {
  imprimir(produtos);
  int item = int.parse(stdin.readLineSync() ?? "");
  produtos.removeAt(item);
  print('=====ITEM REMOVIDO=====');
}

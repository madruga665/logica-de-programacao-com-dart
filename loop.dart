main() {
  print("=====For=====");

  for (int index = 0; index <= 10; index += 1) {
    print("rodou $index");
  }

  print("=====While=====");

  bool condicao = true;
  int index = 0;
  while (condicao) {
    print("rodou $index");
    if (index > 9) {
      condicao = false;
    }
    index += 1;
  }
}

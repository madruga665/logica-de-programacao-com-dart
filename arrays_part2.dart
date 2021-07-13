main() {
  List<String> names = ['Luciano', 'Vanessa', 'Julia', 'Heitor', 'Dante'];
  names.add('Lola');

  print(names.length);
  print(names);
  print(names[0]);

  names.remove('Vanessa');

  print(names);
}

main() {
  Map<String, dynamic> person = {
    'nome': 'Luciano',
    'idade': 34,
    'profissao': 'desenvolvedor web',
    'cidade': 'Guarujá'
  };

  print(
      '${person['nome']} tem ${person['idade']} anos, é ${person['profissao']} e mora em ${person['cidade']}');
}

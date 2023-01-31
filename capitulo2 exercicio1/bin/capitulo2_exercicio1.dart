import 'dart:io';
main() {
  print("Digite a primeira nota:");
  double? primeiraNota = double.parse(stdin.readLineSync()!);
  print("Digite a segunda nota:");
  double? segundaNota = double.parse(stdin.readLineSync()!);
  print("Digite a terceira nota:");
  double? terceiraNota = double.parse(stdin.readLineSync()!);

  double media = (2 * primeiraNota + 3 * segundaNota + 5 * terceiraNota) / 10;
  print(media);
  double? notaFinal;

  if (media >= 6) {
    print("Aluno aprovado");
  } else if (media < 4) {
    print("Aluno reprovado");
  } else if (media >= 4 && media <= 5.9) {
    print("Aluno em Recuperação!\nescreva a nota de recuperação:");
    double? notaRecuperacao = double.parse(stdin.readLineSync()!);
    print(notaFinal = (notaRecuperacao + media) / 2);
  } if( notaFinal! > 5.5){
    print("Aluno aprovado pela recuperação");
  } else{
    print("Aluno reprovado");
  }
}

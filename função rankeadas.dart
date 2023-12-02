import 'dart:io';

calcularNivel(int vitorias, int derrotas) {
  int saldoVitorias = vitorias - derrotas;
  String nivel;
  if (vitorias < 10) {
    nivel = "Ferro";
  } else if (vitorias <= 20) {
    nivel = "Bronze";
  } else if (vitorias <= 50) {
    nivel = "Prata";
  } else if (vitorias <= 80) {
    nivel = "Ouro";
  } else if (vitorias <= 90) {
    nivel = "Diamante";
  } else if (vitorias <= 100) {
    nivel = "Lendário";
  } else {
    nivel = "Imortal";
  }

  print("O Herói tem de saldo de $saldoVitorias está no nível de $nivel");

  return nivel;
}

void main() {
  print("Insira a quantidade de vitórias:");

  int vitorias = int.parse(stdin.readLineSync()!);
  int derrotas = int.parse(stdin.readLineSync()!);

  String nivel = calcularNivel(vitorias, derrotas);
}

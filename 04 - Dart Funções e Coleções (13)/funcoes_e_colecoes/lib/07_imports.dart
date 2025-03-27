import 'matematica/print_num.dart';
import 'matematica/subtracao.dart' as sub;
import 'package:funcoes_e_colecoes/matematica/soma.dart' as soma;

void main(List<String> args) {
  print('Soma int -> ${soma.somaInt(5, 5)}');
  print('Subtração double -> ${sub.subtrairDouble(17.3, 2.8)}');
  numToString(-365);
}

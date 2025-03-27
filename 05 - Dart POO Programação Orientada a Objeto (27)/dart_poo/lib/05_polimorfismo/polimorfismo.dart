import 'package:dart_poo/05_polimorfismo/anestesista.dart';
import 'package:dart_poo/05_polimorfismo/medico.dart';
import 'package:dart_poo/05_polimorfismo/obstreta.dart';
import 'package:dart_poo/05_polimorfismo/pediatra.dart';
import 'package:dart_poo/05_polimorfismo/residente_anestesista.dart';

void main(List<String> args) {
  var medicos = <Medico>[
    ResidenteAnestesista(),
    Anestesista(),
    Obstetra(),
    Pediatra()
  ];

  // O Polimorfismo é aplicado ao adaptarmos um metodo da superclasse, interface ou genéricos
  for(var med in medicos) med.operar();
}
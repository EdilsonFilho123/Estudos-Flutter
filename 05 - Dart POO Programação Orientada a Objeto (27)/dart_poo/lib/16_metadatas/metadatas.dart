import 'dart:mirrors';

import 'package:dart_poo/16_metadatas/fazer.dart';
import 'package:dart_poo/16_metadatas/pessoa.dart';

void main(List<String> args) {
  final p1 = Pessoa();

  InstanceMirror instanceMirror = reflect(p1);
  ClassMirror classMirror = instanceMirror.type;

  // Traz as annotations da Classe
  for (var mtdt in classMirror.metadata) {
    var instanceAnnotation = mtdt.reflectee;

    print((instanceAnnotation is Fazer)
        ? '${instanceAnnotation.quem} esta ${instanceAnnotation.oque}'
        : instanceAnnotation);
  }

  for (var declarationMirror in classMirror.declarations.values) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;

        print((instanceAnnotation is Fazer)
            ? '${instanceAnnotation.quem} esta ${instanceAnnotation.oque}'
            : instanceAnnotation);
      });
    } else if (declarationMirror is MethodMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;

        print((instanceAnnotation is Fazer)
            ? '${instanceAnnotation.quem} esta ${instanceAnnotation.oque}'
            : instanceAnnotation);
      });
    }
  }
}

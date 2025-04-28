// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FutureController on FutureControllerBase, Store {
  late final _$nomeFuturoAtom =
      Atom(name: 'FutureControllerBase.nomeFuturo', context: context);

  @override
  ObservableFuture<String> get nomeFuturo {
    _$nomeFuturoAtom.reportRead();
    return super.nomeFuturo;
  }

  @override
  set nomeFuturo(ObservableFuture<String> value) {
    _$nomeFuturoAtom.reportWrite(value, super.nomeFuturo, () {
      super.nomeFuturo = value;
    });
  }

  @override
  String toString() {
    return '''
nomeFuturo: ${nomeFuturo}
    ''';
  }
}

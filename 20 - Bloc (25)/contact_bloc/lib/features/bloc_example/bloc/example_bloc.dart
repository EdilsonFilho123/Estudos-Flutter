// import 'dart:async';

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleEventFindNames>(_findNames);
    on<ExampleEventRemoveName>(_removeName);
    on<ExampleEventAddName>(_addName);
  }

  final _startList = [
    'Rodrigo',
    'Academia do Flutter',
    'Flutter',
    'Dart',
    'Bloc',
  ];

  Future<void> _findNames(
    ExampleEventFindNames event,
    Emitter<ExampleState> emit,
  ) async {
    emit(ExampleStateLoading());
    await _addTimeLoading();
    emit(ExampleStateData(names: _startList));
  }

  Future<void> _removeName(
    ExampleEventRemoveName event,
    Emitter<ExampleState> emit,
  ) async {
    final currentState = state;

    if (currentState is ExampleStateData) {
      final newNames = currentState.names.toList(growable: true);
      newNames.retainWhere((el) => el != event.name);

      emit(ExampleStateLoading());
      await _addTimeLoading();
      emit(ExampleStateData(names: newNames));
    }
  }

  Future<void> _addName(
    ExampleEventAddName event,
    Emitter<ExampleState> emit,
  ) async {
    final currentState = state;

    if (currentState is ExampleStateData) {
      final newNames = List<String>.from(currentState.names);
      newNames.add(event.name);

      emit(ExampleStateLoading());
      await _addTimeLoading();
      emit(ExampleStateData(names: newNames));
    }
  }

  Future<void> _addTimeLoading() async =>
      Future.delayed(Duration(seconds: (Random().nextInt(3) + 1)));
}

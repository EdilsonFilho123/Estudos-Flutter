import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_freezed_state.dart';
part 'example_freezed_event.dart';

part 'example_freezed_bloc.freezed.dart';

class ExampleFreezedBloc
    extends Bloc<ExampleFreezedEvent, ExampleFreezedState> {
  ExampleFreezedBloc() : super(ExampleFreezedState.initial()) {
    on<_ExampleFreezedEventFindNames>(_findNames);
    on<_ExampleFreezedEventRemoveName>(_removeName);
    on<_ExampleFreezedEventAddName>(_addName);
  }

  final _startList = [
    'Rodrigo',
    'Academia do Flutter',
    'Flutter',
    'Dart',
    'Bloc',
  ];

  Future<void> _findNames(
    _ExampleFreezedEventFindNames event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    emit(ExampleFreezedState.loading());
    await _addTimeLoading();
    emit(ExampleFreezedState.data(names: _startList));
  }

  Future<void> _removeName(
    _ExampleFreezedEventRemoveName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    final currentState = state;

    if (currentState is ExampleFreezedStateData) {
      final newNames = List<String>.from(currentState.names);
      newNames.retainWhere((el) => el != event.name);

      emit(ExampleFreezedState.loading());
      await _addTimeLoading();
      emit(ExampleFreezedState.data(names: newNames));
    }
  }

  Future<void> _addName(
    _ExampleFreezedEventAddName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    final currentState = state;

    if (currentState is ExampleFreezedStateData) {
      final newNames = List<String>.from(currentState.names);
      newNames.add(event.name);

      emit(ExampleFreezedState.loading());
      await _addTimeLoading();
      emit(ExampleFreezedState.data(names: newNames));
    }
  }

  Future<void> _addTimeLoading() async =>
      Future.delayed(Duration(seconds: (Random().nextInt(3) + 1)));
}

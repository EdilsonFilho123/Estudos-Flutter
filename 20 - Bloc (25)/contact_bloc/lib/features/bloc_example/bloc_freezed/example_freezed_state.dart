part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedState with _$ExampleFreezedState {
  factory ExampleFreezedState.initial() = ExampleFreezedStateInitial;
  factory ExampleFreezedState.loading() = ExampleFreezedStateLoading;
  factory ExampleFreezedState.data({required List<String> names}) = ExampleFreezedStateData;
}
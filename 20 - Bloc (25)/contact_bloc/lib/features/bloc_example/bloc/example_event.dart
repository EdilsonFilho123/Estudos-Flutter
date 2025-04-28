part of 'example_bloc.dart';

abstract class ExampleEvent {}

class ExampleEventFindNames extends ExampleEvent {}

class ExampleEventAddName extends ExampleEvent {
  final String name;
  ExampleEventAddName({required this.name});
}

class ExampleEventRemoveName extends ExampleEvent {
  final String name;
  ExampleEventRemoveName({required this.name});
}

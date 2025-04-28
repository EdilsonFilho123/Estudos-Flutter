import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = FutureControllerBase with _$FutureController;

abstract class FutureControllerBase with Store {
  @observable
  var nomeFuturo = ObservableFuture.value('');
  // ou
  // var nomeFuturo = Future.value('').asObservable();

  Future<void> buscarNome() async {
    // nomeFuturo = Future.delayed(Duration(seconds: 2), () => 'Tester').asObservable();
    // ou
    final buscaFuture = Future.delayed(Duration(seconds: 2), () => 'Tester');
    // nomeFuturo = buscaFuture.asObservable();
    // ou
    nomeFuturo = ObservableFuture(buscaFuture);
  }
}

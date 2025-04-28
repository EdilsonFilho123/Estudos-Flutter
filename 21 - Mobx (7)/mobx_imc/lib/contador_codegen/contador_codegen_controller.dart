import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/full_name.dart';
part 'contador_codegen_controller.g.dart';

class ContadorCodegenController = ContadorCodegenControllerBase
    with _$ContadorCodegenController;

abstract class ContadorCodegenControllerBase with Store {
  @observable
  int counter = 0;

  @observable
  var fullName = FullName(first: 'first', last: 'last');

  @computed
  String get saudacao => 'Olá ${fullName.first} ($counter)';

  @action
  void increment() {
    counter++;
    fullName = fullName.copyWith(first: 'Tester', last: 'XPTO');
  }
}

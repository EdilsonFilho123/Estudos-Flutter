import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = '--Nome--';
  String imgAvatar =
      'https://img.freepik.com/vetores-gratis/fundo-geometrico-do-teste-padrao_1319-136.jpg';
  String birthDate = '--Data--';

  void alteraDados() {
    name = 'Edilson';
    imgAvatar = 'https://avatars.githubusercontent.com/u/50504618';
    birthDate = '11/12/2003';
    notifyListeners();
  }

  void alteraNome() {
    name = 'Academia do Flutter';
    notifyListeners();
  }
}

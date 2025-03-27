import 'package:dart_poo/08_mixins/artista.dart';
import 'package:dart_poo/08_mixins/cantar.dart';
import 'package:dart_poo/08_mixins/dancar.dart';

// note que o mixin é invocado pelo 'with', que deve estar localizado após o extends e antes de implements
// da msm forma que o dart n sabe se uma classe abstract é uma classe pai, ou uma interface, ele tbm n sabe se é um mixin
// dito isso, pode criar um mixin da mesma forma que uma classe pai ou uma interface, usando o abstract e colocando no 'with'
class Joana extends Artista with Dancar, Cantar implements Joanainterface {

}

abstract class Joanainterface {}
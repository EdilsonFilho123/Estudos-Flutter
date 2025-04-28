import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/product_model.dart';
part 'observable_list_controller.g.dart';

class ObservableListController = ObservableListControllerBase
    with _$ObservableListController;

abstract class ObservableListControllerBase with Store {
  final _productsInitial = <ProductModel>[
    ProductModel(name: 'Computador'),
    ProductModel(name: 'Celular'),
    ProductModel(name: 'Teclado'),
    ProductModel(name: 'Mouse'),
  ];

  @observable
  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() => products.addAll(_productsInitial);

  @action
  void addProduct() => products.add(_productsInitial[Random().nextInt(4)]);

  @action
  void removeProduct() {
    if(products.isNotEmpty) products.removeLast();
  }
}

import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/product_model.dart';
import 'package:mobx_imc/observables/model/model/product_store.dart';
part 'observable_model_controller.g.dart';

class ObservableModelController = ObservableModelControllerBase
    with _$ObservableModelController;

abstract class ObservableModelControllerBase with Store {
  final _productsInitial = <ProductStore>[
    ProductStore(product: ProductModel(name: 'Computador')),
    ProductStore(product: ProductModel(name: 'Celular')),
    ProductStore(product: ProductModel(name: 'Teclado')),
    ProductStore(product: ProductModel(name: 'Mouse')),
  ];

  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() => products.addAll(_productsInitial);

  @action
  void addProduct() => products.add(_productsInitial[Random().nextInt(4)]);

  @action
  void removeProduct() {
    if (products.isNotEmpty) products.removeLast();
  }

  @action
  void toggleProductSelectionByIndex(int i) {
    if (products.length > i) products[i].isSelected = !products[i].isSelected;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';

import 'package:mobx_imc/models/product_model.dart';

part 'product_store.g.dart';

class ProductStore = ProductStoreBase with _$ProductStore;

abstract class ProductStoreBase with Store {
  @observable
  ProductModel product;
  @observable
  bool isSelected;

  ProductStoreBase({
    required this.product,
    this.isSelected = false
  });
}

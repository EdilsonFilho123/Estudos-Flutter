// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_model_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ObservableModelController on ObservableModelControllerBase, Store {
  late final _$productsAtom =
      Atom(name: 'ObservableModelControllerBase.products', context: context);

  @override
  ObservableList<ProductStore> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductStore> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$ObservableModelControllerBaseActionController =
      ActionController(name: 'ObservableModelControllerBase', context: context);

  @override
  void loadProducts() {
    final _$actionInfo = _$ObservableModelControllerBaseActionController
        .startAction(name: 'ObservableModelControllerBase.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$ObservableModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProduct() {
    final _$actionInfo = _$ObservableModelControllerBaseActionController
        .startAction(name: 'ObservableModelControllerBase.addProduct');
    try {
      return super.addProduct();
    } finally {
      _$ObservableModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$ObservableModelControllerBaseActionController
        .startAction(name: 'ObservableModelControllerBase.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$ObservableModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleProductSelectionByIndex(int i) {
    final _$actionInfo =
        _$ObservableModelControllerBaseActionController.startAction(
            name:
                'ObservableModelControllerBase.toggleProductSelectionByIndex');
    try {
      return super.toggleProductSelectionByIndex(i);
    } finally {
      _$ObservableModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}

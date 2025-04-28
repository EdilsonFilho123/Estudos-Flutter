import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/model/observable_model_controller.dart';

class ObservableModelPage extends StatefulWidget {
  const ObservableModelPage({super.key});

  @override
  State<ObservableModelPage> createState() => _ObservableModelPageState();
}

class _ObservableModelPageState extends State<ObservableModelPage> {
  final controller = ObservableModelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Observable Model Page')),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (context) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Observer(
                      builder: (context) {
                        return CheckboxListTile(
                          value: controller.products[index].isSelected,
                          onChanged: (_) {
                            controller.toggleProductSelectionByIndex(index);
                            print('oi');
                          },
                          title: Text(controller.products[index].product.name),
                        );
                      }
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => controller.addProduct(),
                child: Text('Adicionar'),
              ),
              TextButton(
                onPressed: () => controller.removeProduct(),
                child: Text('Remover'),
              ),
              TextButton(
                onPressed: () => controller.loadProducts(),
                child: Text('Carregar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

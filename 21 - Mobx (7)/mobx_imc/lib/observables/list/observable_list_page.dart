import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/list/observable_list_controller.dart';

class ObservableListPage extends StatefulWidget {
  const ObservableListPage({super.key});

  @override
  State<ObservableListPage> createState() => _ObservableListPageState();
}

class _ObservableListPageState extends State<ObservableListPage> {
  final controller = ObservableListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Observable List Page')),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (context) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.products[index].name),
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

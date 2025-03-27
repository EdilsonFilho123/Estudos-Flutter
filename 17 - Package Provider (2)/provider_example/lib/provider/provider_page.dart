import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/produto_model.dart';
import 'package:provider_example/provider/produto_widget.dart';
import 'package:provider_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context); // Fica escutando alterações
    // var user = context.read<UserModel>(); // Retorna apenas o atual;
    // var user = context.watch<UserModel>(); // Fica escutando alterações
    // var user_image = context.select<UserModel, String>((userModel) => userModel.imgAvatar); // pega um atributo em especifico

    return Scaffold(
      appBar: AppBar(title: Text('Provider')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.imgAvatar),
                  radius: 60,
                ),
              ),
              SizedBox(height: 20),
              Text('${user.name} (${user.birthDate})'),
              Provider(
                create: (_) => ProdutoModel(name: 'Arroz'),
                child: ProdutoWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

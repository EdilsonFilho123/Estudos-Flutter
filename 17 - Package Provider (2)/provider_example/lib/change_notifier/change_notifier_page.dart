import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';
import 'package:tuple/tuple.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 3));
      context.read<ProviderController>().alteraDados();
    });
  }

  @override
  Widget build(BuildContext context) {
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
                child: Selector<ProviderController, String>( // poderia usar tbm o consumer, porém ele vai atualizar a qlqr mudança, até de atributos não usados dentro dele
                  selector:
                      (_, providerController) => providerController.imgAvatar,
                  builder: (context, imgAvatar, snapshot) {
                    return CircleAvatar(
                      backgroundImage: NetworkImage(imgAvatar),
                      radius: 60,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Selector<ProviderController, Tuple2<String, String>>(
                selector:
                    (_, providerController) => Tuple2(
                      providerController.name,
                      providerController.birthDate,
                    ),
                builder: (context, tupla, __) {
                  return Text('${tupla.item1} (${tupla.item2})');
                },
              ),
              ElevatedButton(
                onPressed:
                    () => context.read<ProviderController>().alteraNome(),
                child: Text('Altera Nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

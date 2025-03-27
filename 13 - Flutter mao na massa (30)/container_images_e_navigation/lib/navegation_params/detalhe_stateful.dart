import 'package:flutter/material.dart';

class DetalheStateful extends StatefulWidget {
  const DetalheStateful({super.key});

  @override
  State<DetalheStateful> createState() => _DetalheStatefulState();
}

class _DetalheStatefulState extends State<DetalheStateful> {
  int id = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final params =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      setState(() {
        id = params['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('O id do produto é $id')],
        ),
      ),
    );
  }
}

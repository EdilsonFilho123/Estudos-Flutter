import 'package:flutter/material.dart';

class ProdutoPage extends StatefulWidget {
  final String? produto;

  const ProdutoPage({super.key, this.produto});
  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produto')),
      body: Center(child: Text(widget.produto ?? 'Produto não informado')),
    );
  }
}

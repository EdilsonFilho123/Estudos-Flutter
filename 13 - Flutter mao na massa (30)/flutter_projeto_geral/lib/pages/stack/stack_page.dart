import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});
  static final title = 'Stack';
  static final route = '/stack';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(color: Colors.green),
          Container(color: Colors.blue, width: 300, height: 300),
          Align(
            alignment: Alignment.topRight,
            child: Container(color: Colors.red, width: 150, height: 150),
          ),
          Positioned(
            top: 250,
            left: 40,
            child: Container(color: Colors.pink, width: 150, height: 150),
          ),
        ],
      ),
    );
  }
}

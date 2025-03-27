import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Page1')],
        ),
      ),
    );
  }
}
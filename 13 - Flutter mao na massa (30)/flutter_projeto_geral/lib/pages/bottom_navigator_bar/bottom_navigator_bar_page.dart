import 'package:flutter/material.dart';
import 'package:flutter_projeto_geral/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_projeto_geral/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});
  static final title = 'Bottom Navigator Bar';
  static final route = '/bottom_navigator_bar';

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(BottomNavigatorBarPage.title)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined),
            label: 'Pagina 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reset_tv_sharp),
            label: 'Pagina 2',
          ),
        ],
        onTap: (value) {
          setState(() {
            i = value;
          });
        },
      ),
      body: IndexedStack(index: i, children: [Page1(), Page2()]),
    );
  }
}

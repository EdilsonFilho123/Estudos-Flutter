import 'package:desafio/views/account_page.dart';
import 'package:desafio/views/initial_page.dart';
import 'package:desafio/views/publication_page.dart';
import 'package:desafio/views/reels_page.dart';
import 'package:desafio/views/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: i,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              tooltip: 'Página Inicial',
              icon: Icon(Icons.house_outlined),
              activeIcon: Icon(Icons.house),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: 'Pesquisa',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: 'Nova Publicação',
              icon: Icon(Icons.add_box_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: 'Reels',
              icon: Icon(Icons.ondemand_video_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: 'Perfil',
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
          onTap: (value) {
            if (value == 2)
              Navigator.of(context).pushNamed('/publication');
            else
              setState(() => (i = value));
          },
        ),
      ),
      body: IndexedStack(
        index: i,
        children: [
          InitialPage(),
          SearchPage(),
          PublicationPage(),
          ReelsPage(),
          AccountPage(),
        ],
      ),
    );
  }
}

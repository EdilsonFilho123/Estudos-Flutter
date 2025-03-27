import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minha primeira AppBar',
          style: TextStyle(fontFamily: 'Orbitron', color: Colors.white),
        ),
        backgroundColor: Colors.purple[900],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_link_outlined)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplane_ticket_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airline_seat_individual_suite_outlined),
          ),
        ],
      ),
      drawer: Drawer(child: Center(child: Text('Drawer Aberto'))),
      endDrawer: Drawer(child: Center(child: Text('Drawer End'))),
      body: Center(
        child: Text(
          'Minha Home Page',
          style: TextStyle(
            fontFamily: 'Orbitron',
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final widthCard = (mq.size.width / 2) - 8;

    Widget cardButton(String text, [Function()? onTap]) {
      return InkWell(
        onTap: onTap,
        child: SizedBox(
          height: widthCard,
          width: widthCard,
          child: Card(child: Center(child: Text(text))),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                cardButton(
                  'Example',
                  () => Navigator.of(context).pushNamed('/bloc/example'),
                ),
                cardButton(
                  'Example Freezed',
                  () =>
                      Navigator.of(context).pushNamed('/bloc/example/freezed'),
                ),
                cardButton(
                  'Contact',
                  () => Navigator.of(context).pushNamed('/contacts/list'),
                ),
                cardButton(
                  'Contact Cubit',
                  () => Navigator.of(context).pushNamed('/contacts_cubit/list'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

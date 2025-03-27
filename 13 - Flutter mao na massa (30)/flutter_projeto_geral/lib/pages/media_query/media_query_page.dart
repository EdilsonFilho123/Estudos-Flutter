import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    print('width: ${mq.size.width}');
    print('height: ${mq.size.height}');
    print('orientation: ${mq.orientation}');
    print('Padding Top: ${mq.padding.top}');

    final appBar = AppBar(title: Text('MediaQuery'));
    final heightWidgets =
        mq.size.height - mq.padding.top - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mq.size.width * .5,
              height: heightWidgets * .5,
            ),
            Container(
              color: Colors.blue,
              width: mq.size.width,
              height: heightWidgets * .5,
            ),
          ],
        ),
      ),
    );
  }
}

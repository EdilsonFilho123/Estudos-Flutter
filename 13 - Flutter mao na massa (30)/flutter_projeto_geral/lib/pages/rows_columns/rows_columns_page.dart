import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows & Columns')),
      body: Container(
        color: Colors.grey,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
            Container(
              color: Colors.blue,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('col 3'), Text('col 3'), Text('col 3')],
              ),
            ),
          ],
        ),
        // Row(
        //   children: [
        //     Text('Elemento 1'),
        //     Text('Elemento 2'),
        //     Text('Elemento 3'),
        //   ],
        // )
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});
  static final title = 'Botões e Rotação de Texto';
  static final route = '/botoes_rotacao_texto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.deepPurple,
                    child: Text('Ganhamo Family'),
                  ),
                ),
                Icon(Icons.hail),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Botão aleatorio'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
                padding: EdgeInsets.all(20),
                minimumSize: Size(50, 10),
                maximumSize: Size(150, 100),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(5000)),
                // ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.language)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.amber[900],
                shadowColor: Colors.lightBlue,
                minimumSize: Size(120, 50),
              ),
              child: Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Deixe seu like'),
              icon: Icon(Icons.thumb_up_off_alt_outlined),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button full custom'),
              style: ButtonStyle(
                shadowColor: WidgetStateProperty.all(Colors.red[900]),
                minimumSize: WidgetStateProperty.resolveWith((ws) {
                  if (ws.contains(WidgetState.pressed))
                    return Size(100, 50);
                  else
                    return Size(100, 100);
                }),
                backgroundColor: WidgetStateProperty.resolveWith((ws) {
                  if (ws.contains(WidgetState.pressed)) return Colors.lime;
                  
                  return Colors.white;
                }),
              ),
            ),
            InkWell(onTap: () {}, child: Text('InkWell')),
            GestureDetector(
              onTap: () {},
              child: Text('Gesture Detector'),
              // onVerticalDragStart: (details) => print('Start: $details'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.purple,
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Botão Improvisado',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

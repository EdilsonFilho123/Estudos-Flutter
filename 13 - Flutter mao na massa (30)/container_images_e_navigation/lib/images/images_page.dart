import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

// Em assets/imgs, onde definimos o local de nossas imagens (E colocamos no pubspec.yaml)
// se criarmos pastas 2.0x, ou 3.0x e dentro delas colocarmos as mesmas imagens como nomes iguais
// O flutter puxará da pasta mais proxima ao valor da MediaQuery.of(context).devicePixelRatio
// Se existir pastas 2.0x e 3.0x e o 
//
// Isso acontece para que possamos aumentar a resolução da imagem quanto maior for o da tela do usuário

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red[500],
              child: Image.asset(
                'assets/imgs/montanha de areia.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 0, 42, 77),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKW0AHTZ9OGlsC-3cY81BVXuAZPlJZ2_-S8w&s',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgs/chuva.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Text Background',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5,
                    backgroundColor: Colors.white.withAlpha(100),
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

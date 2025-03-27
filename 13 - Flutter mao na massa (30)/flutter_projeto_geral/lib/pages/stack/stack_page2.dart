import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});
  static final title = 'Stack 2';
  static final route = '/stack_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://celestinodesp.com.br/wp/wp-content/uploads/2019/09/Alaska-Aurora-Boreal_blog.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Card(
              color: Colors.white54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Alasca',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'verdana',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'O Alasca é uma terra de belezas indomáveis, onde a natureza se apresenta em sua forma mais pura e majestosa. Suas montanhas imponentes cobertas de neve se estendem até onde a vista alcança, refletindo a luz dourada do sol da meia-noite. Os rios cristalinos serpenteiam por vales intocados, abastecendo uma fauna abundante que inclui alces, ursos e águias-douradas. No inverno, a dança das auroras boreais colore o céu noturno, criando um espetáculo de luzes que encanta a todos que têm o privilégio de presenciá-lo. No verão, os dias longos permitem explorar trilhas selvagens, navegar por fiordes impressionantes e testemunhar geleiras milenares que ainda resistem ao tempo. O Alasca é um refúgio para aventureiros, um paraíso para os amantes da natureza e um lembrete constante da grandiosidade do mundo natural.',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

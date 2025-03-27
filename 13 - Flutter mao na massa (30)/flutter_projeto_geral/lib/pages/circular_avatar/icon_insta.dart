import 'package:flutter/material.dart';

class IconInsta extends StatelessWidget {
  const IconInsta({super.key, required this.url, this.size = 100});
  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFC900),
                  Color(0xFFFF2A45),
                  Color(0xFFD300C5),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: size,
            height: size,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(backgroundImage: NetworkImage(url)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 56, 1, 150),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Ao Vivo',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Icon(Icons.star, size: (size / 4)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

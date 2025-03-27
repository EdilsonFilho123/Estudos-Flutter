import 'package:desafio/models/story.dart';
import 'package:flutter/material.dart';

class IconInsta extends StatelessWidget {
  const IconInsta({
    super.key,
    required this.story,
    this.size = 100,
    this.isUser = false,
  });
  final Story story;
  final double size;
  final bool isUser;

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
              gradient:
                  ((story.isNew || story.isLive)
                      ? LinearGradient(
                        colors: [
                          Color(0xFFFFC900),
                          Color(0xFFFF2A45),
                          Color(0xFFD300C5),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      )
                      : null),
              color: Colors.grey[900],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: size,
            height: size,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: (size / (100 / 3)),
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(story.user.imageURL),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:
                (story.isLive
                    ? Container(
                      padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 56, 1, 150),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Ao Vivo',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )
                    : null),
          ),
          Align(
            alignment: Alignment.topRight,
            child:
                (story.onlyFrinds
                    ? Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(1),
                        child: Icon(Icons.star, size: (size / 4)),
                      ),
                    )
                    : null),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child:
                (isUser
                    ? Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.black),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(1),
                          child: Icon(Icons.add, size: (size / 4)),
                        ),
                      ),
                    )
                    : null),
          ),
        ],
      ),
    );
  }
}

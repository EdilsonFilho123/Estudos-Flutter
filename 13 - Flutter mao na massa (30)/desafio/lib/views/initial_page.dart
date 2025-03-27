import 'package:desafio/models/story.dart';
import 'package:desafio/models/user.dart';
import 'package:desafio/widgets/icon_insta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final stories = <Story>[
      Story(
        isNew: false,
        isLive: false,
        onlyFrinds: false,
        urlImage:
            'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-15/482466283_18395298355098229_1179738853390790108_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmY3NTc2MS5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=101&_nc_oc=Q6cZ2AHM67tl5xeixg9jNqjIsbnuL6WyC5bASJegZ1Q7_l88P9KMzHQFQ1dygUuuxmgPCrk&_nc_ohc=D4ffxCLYBGEQ7kNvgHiIqGJ&_nc_gid=9961cf720d8541a88f60111c0051ba47&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzU4MDE4NjQ2OTI0ODM0MjAzOA%3D%3D.3-ccb7-5&oh=00_AYEC2fmslBhufwZtZ6SMB8_VvEb9ro0JaolCbwq0a0lziA&oe=67D1D1F4&_nc_sid=7a9f4b',
        audio: 'Áudio original',
        date: DateTime.now(),
        user: User(
          nome: 'Kabum',
          imageURL:
              'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/471637979_1409983763740809_7387757058367109913_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2AGU9hBGMb4FZaPwEn1j1IYLqa1AUr2dJYQaPpNhL_dS2zZcL_-kjCh99oSiCxY4Ies&_nc_ohc=TVQkAThusuIQ7kNvgExWHeh&_nc_gid=92ac4c9390f14cc790b7ac327d1453a5&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYHqlEC81Lw1t2MEIWFKZEcx-whBjVz6EYtoyJVyTNKitQ&oe=67D0E01D&_nc_sid=10d13b',
        ),
      ),
      Story(
        isNew: false,
        isLive: true,
        onlyFrinds: true,
        urlImage: '',
        audio: '',
        date: DateTime.now(),
        user: User(
          nome: '+ Musika',
          imageURL:
              'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/21373180_705366346319843_2541882373008523264_a.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=111&_nc_oc=Q6cZ2AFS7QSbLpk-hykLBG21SeYdhGNVnsloj97KVF6sguVFiDxMYAcKwaVA232m0lNM-8Q&_nc_ohc=Rn1BWxKpcGgQ7kNvgFCNkiX&_nc_gid=b99f5a2d0b4e4558ac82ff59e23f2ac3&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYF2H0dXHncKdafausF8Z94z0TMxrZE7RugW2CPbTZImEA&oe=67D0D3F5&_nc_sid=10d13b',
        ),
      ),
      Story(
        isNew: true,
        isLive: false,
        onlyFrinds: false,
        urlImage: '',
        audio: '',
        date: DateTime.now(),
        user: User(
          nome: 'Rodrigo Manga',
          imageURL:
              'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/403691690_1524775278273533_1569659163998803344_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2AFS7QSbLpk-hykLBG21SeYdhGNVnsloj97KVF6sguVFiDxMYAcKwaVA232m0lNM-8Q&_nc_ohc=l8r6v65h0UYQ7kNvgExKyGq&_nc_gid=b99f5a2d0b4e4558ac82ff59e23f2ac3&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYGw3Il79iEI4S-pUHKPpWR_ShERxM1Ext63rFW-zmgFig&oe=67D0C8F4&_nc_sid=10d13b',
        ),
      ),
      Story(
        isNew: true,
        isLive: false,
        onlyFrinds: true,
        urlImage: '',
        audio: '',
        date: DateTime.now(),
        user: User(
          nome: 'Dr. Caixeta',
          imageURL:
              'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/472172422_2013553735738102_7083965353900168074_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=110&_nc_oc=Q6cZ2AGgMVj7PxZNoQV46Pqdo_dcOW24trzrqt7hXCEmhV__jJt9tlXYwIWE1XY7MLfCuzU&_nc_ohc=hSIJHIs61H4Q7kNvgEkilis&_nc_gid=b31365bc3d8247f59252f4a882b621d8&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYG7xiUwf2qB05uoz91q_2roAJ4a7gD1DbuLzy2Jht-rcw&oe=67D0D708&_nc_sid=10d13b',
        ),
      ),
      Story(
        isNew: true,
        isLive: true,
        onlyFrinds: true,
        urlImage: '',
        audio: '',
        date: DateTime.now(),
        user: User(
          nome: 'João Pichau',
          imageURL:
              'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/115217699_279692799981386_1982191624692365609_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=102&_nc_oc=Q6cZ2AGgMVj7PxZNoQV46Pqdo_dcOW24trzrqt7hXCEmhV__jJt9tlXYwIWE1XY7MLfCuzU&_nc_ohc=h28cspaNHbcQ7kNvgHu9pEL&_nc_gid=b31365bc3d8247f59252f4a882b621d8&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYGTvVN3MRK3T-lGHpkrKYGpFl3i2AjH6aZLIlDVKobFdA&oe=67D0E08D&_nc_sid=10d13b',
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: mq.size.width,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          showGeneralDialog(
                            context: context,
                            barrierDismissible: true,
                            barrierLabel: "",
                            barrierColor: Colors.transparent,
                            pageBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                            ) {
                              return Center(
                                child: Align(
                                  alignment: Alignment(-0.925, -0.72),
                                  child: Container(
                                    width: 175,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: (Colors.grey[850] as Color)
                                          .withAlpha(220),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextButton(
                                          onPressed:
                                              () => Navigator.of(context).pop(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            spacing: 10,
                                            children: [
                                              Icon(
                                                Icons
                                                    .supervisor_account_outlined,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              Text(
                                                'Seguindo',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        TextButton(
                                          onPressed:
                                              () => Navigator.of(context).pop(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            spacing: 10,
                                            children: [
                                              Icon(
                                                Icons.star_border_rounded,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              Text(
                                                'Favoritos',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            transitionBuilder:
                                (context, animation, sAnimation, child) =>
                                    FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 4,
                          children: [
                            SvgPicture.asset(
                              'assets/imgs/insta.svg',
                              width: 110,
                              fit: BoxFit.cover,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 15,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Icon(
                                Icons.favorite_border_outlined,
                                size: 27,
                                color: Colors.white,
                              ),
                              Container(
                                width: 11.5,
                                height: 11.5,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2),
                                  color: Colors.black,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red[600],
                                  foregroundColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.chat,
                                  size: 27,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[700],
                                    foregroundColor: Colors.black,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 7.5,
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      IconInsta(size: 90, story: stories[0], isUser: true),
                      Center(
                        child: Text(
                          'Seu story',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      IconInsta(size: 90, story: stories[1]),
                      Center(
                        child: Text(
                          stories[1].user.nome,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      IconInsta(size: 90, story: stories[2]),
                      Center(
                        child: Text(
                          stories[2].user.nome,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      IconInsta(size: 90, story: stories[3]),
                      Center(
                        child: Text(
                          stories[3].user.nome,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      IconInsta(size: 90, story: stories[4]),
                      Center(
                        child: Text(
                          stories[4].user.nome,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 490,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(stories[0].urlImage),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          color: Colors.black.withAlpha(100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconInsta(size: 30, story: stories[0]),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    stories[0].user.nome,
                                    style: TextStyle(
                                      // fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      Text(
                                        stories[0].user.nome,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        stories[0].audio,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

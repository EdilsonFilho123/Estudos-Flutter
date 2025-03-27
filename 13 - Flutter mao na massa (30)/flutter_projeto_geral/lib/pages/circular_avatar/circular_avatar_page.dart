import 'package:flutter/material.dart';
import 'package:flutter_projeto_geral/pages/circular_avatar/icon_insta.dart';

class CircularAvatarPage extends StatelessWidget {
  const CircularAvatarPage({super.key});
  static final title = 'Circular Avatar';
  static final route = '/circular_avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: EdgeInsets.all(7.5),
        color: Colors.black87,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 7.5,
                children: [
                  IconInsta(
                    size: 100,
                    url:
                        'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/471637979_1409983763740809_7387757058367109913_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2AGU9hBGMb4FZaPwEn1j1IYLqa1AUr2dJYQaPpNhL_dS2zZcL_-kjCh99oSiCxY4Ies&_nc_ohc=TVQkAThusuIQ7kNvgExWHeh&_nc_gid=92ac4c9390f14cc790b7ac327d1453a5&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYHqlEC81Lw1t2MEIWFKZEcx-whBjVz6EYtoyJVyTNKitQ&oe=67D0E01D&_nc_sid=10d13b',
                  ),
                  IconInsta(
                    size: 100,
                    url:
                        'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/21373180_705366346319843_2541882373008523264_a.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=111&_nc_oc=Q6cZ2AFS7QSbLpk-hykLBG21SeYdhGNVnsloj97KVF6sguVFiDxMYAcKwaVA232m0lNM-8Q&_nc_ohc=Rn1BWxKpcGgQ7kNvgFCNkiX&_nc_gid=b99f5a2d0b4e4558ac82ff59e23f2ac3&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYF2H0dXHncKdafausF8Z94z0TMxrZE7RugW2CPbTZImEA&oe=67D0D3F5&_nc_sid=10d13b',
                  ),
                  IconInsta(
                    size: 100,
                    url:
                        'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/403691690_1524775278273533_1569659163998803344_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2AFS7QSbLpk-hykLBG21SeYdhGNVnsloj97KVF6sguVFiDxMYAcKwaVA232m0lNM-8Q&_nc_ohc=l8r6v65h0UYQ7kNvgExKyGq&_nc_gid=b99f5a2d0b4e4558ac82ff59e23f2ac3&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYGw3Il79iEI4S-pUHKPpWR_ShERxM1Ext63rFW-zmgFig&oe=67D0C8F4&_nc_sid=10d13b',
                  ),
                  IconInsta(
                    size: 100,
                    url:
                        'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/472172422_2013553735738102_7083965353900168074_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=110&_nc_oc=Q6cZ2AGgMVj7PxZNoQV46Pqdo_dcOW24trzrqt7hXCEmhV__jJt9tlXYwIWE1XY7MLfCuzU&_nc_ohc=hSIJHIs61H4Q7kNvgEkilis&_nc_gid=b31365bc3d8247f59252f4a882b621d8&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYG7xiUwf2qB05uoz91q_2roAJ4a7gD1DbuLzy2Jht-rcw&oe=67D0D708&_nc_sid=10d13b',
                  ),
                  IconInsta(
                    size: 100,
                    url:
                        'https://instagram.fcpq2-1.fna.fbcdn.net/v/t51.2885-19/115217699_279692799981386_1982191624692365609_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcpq2-1.fna.fbcdn.net&_nc_cat=102&_nc_oc=Q6cZ2AGgMVj7PxZNoQV46Pqdo_dcOW24trzrqt7hXCEmhV__jJt9tlXYwIWE1XY7MLfCuzU&_nc_ohc=h28cspaNHbcQ7kNvgHu9pEL&_nc_gid=b31365bc3d8247f59252f4a882b621d8&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYGTvVN3MRK3T-lGHpkrKYGpFl3i2AjH6aZLIlDVKobFdA&oe=67D0E08D&_nc_sid=10d13b',
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

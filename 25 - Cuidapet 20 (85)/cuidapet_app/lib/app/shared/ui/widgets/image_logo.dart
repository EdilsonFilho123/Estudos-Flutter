import 'package:cuidapet/app/shared/ui/extensions/size_screen_extension.dart';
import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  final String path;
  final double width;
  final double? height;
  final BoxFit? fit;
  final bool isWrapWithCenter;

  const ImageLogo({
    super.key,
    this.path = 'assets/images/logo.png',
    this.width = 162,
    this.height,
    this.fit = BoxFit.fill,
    this.isWrapWithCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    final img = Image.asset(path, width: width.w, height: height?.h, fit: fit);

    return (isWrapWithCenter ? Center(child: img) : img);
  }
}

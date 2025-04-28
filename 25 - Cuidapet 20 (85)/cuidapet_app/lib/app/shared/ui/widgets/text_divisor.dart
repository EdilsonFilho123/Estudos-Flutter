import 'package:cuidapet/app/shared/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet/app/shared/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextDivisor extends StatelessWidget {
  final String text;
  Color? color;

  TextDivisor({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    color ??= context.primaryColor;

    return Row(
      children: [
        Expanded(child: Divider(thickness: 1, color: color)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: color,
            ),
          ),
        ),
        Expanded(child: Divider(thickness: 1, color: color)),
      ],
    );
  }
}

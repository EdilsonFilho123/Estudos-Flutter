import 'package:cuidapet/app/shared/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet/app/shared/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;
  final Color fontColor;
  final double? width;
  final void Function()? onPressed;

  const RoundedButtonWithIcon({
    super.key,
    required this.text,
    required this.icon,
    this.color,
    this.fontColor = Colors.white,
    this.width,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: width?.w,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: color ?? context.primaryColorDark,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              ),
              onPressed: onPressed,
              child: Row(
                children: [
                  Icon(icon, color: fontColor, size: 20.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: VerticalDivider(color: fontColor),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 15.sp,
                      // fontFamily: 'Roboto',
                      // fontWeight: FontWeight.bold,
                      color: fontColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

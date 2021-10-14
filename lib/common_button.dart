library common_button;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  Color? bgColor;
  final Color tColor;
  final String text;
  final Function? onPress;
  final double radius;
  final double fSize;
  final FontWeight fontWeight;
  final Alignment textAlign;

  CommonButton(
      {Key? key,
      this.tColor = Colors.white,
      required this.text,
      this.onPress,
      this.radius = 11,
      this.fSize = 14,
      this.bgColor = Colors.orange,
      this.fontWeight = FontWeight.normal,
      this.textAlign = Alignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (onPress == null) {
      bgColor = Colors.amber;
    } else {
      if (bgColor! == null) {
        bgColor = Colors.amber;
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: CupertinoButton(
          child: Align(
            alignment: textAlign,
            child: Text(
              text,
              style: TextStyle(
                color: tColor,
                fontWeight: fontWeight,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          onPressed:()=> onPress!())
    );
  }
}

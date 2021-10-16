library common_button;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final int customShape;
  final String text;
  final bool isIcon;
  final IconData? icon;


  Color? bgColor;
  final Color tColor;
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
      this.textAlign = Alignment.center, this.customShape=1, this.isIcon = false, this.icon = Icons.save})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  isIcon == false
        ? ElevatedButton(
      onPressed: ()=>onPress!(),
      child: Text(text, style: TextStyle(color: tColor, fontSize: fSize, fontWeight: fontWeight, decoration: TextDecoration.none),),
      style: customShape == 1
          ? ElevatedButton.styleFrom(
        primary: bgColor,
          shape: StadiumBorder())
          : customShape == 2
          ? ElevatedButton.styleFrom(
        primary: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      )
          : customShape == 3
          ? ElevatedButton.styleFrom(
        primary: bgColor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(24),
      )
          : customShape == 4
          ? OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
          shape: StadiumBorder())
          : customShape == 5
          ? OutlinedButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ))
          : customShape == 6
          ? OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24))
          : OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24)),
    )
        : ElevatedButton.icon(
      onPressed: ()=> onPress!(),
      icon: Icon(icon!),
      label: Text(text),
      style: customShape == 1
          ? ElevatedButton.styleFrom(shape: StadiumBorder())
          : customShape == 2
          ? ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      )
          : customShape == 3
          ? ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(24),
      )
          : customShape == 4
          ? OutlinedButton.styleFrom(shape: StadiumBorder())
          : customShape == 5
          ? OutlinedButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ))
          : customShape == 6
          ? OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24))
          : OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24)),
    );
  }
}

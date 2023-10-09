import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final int customShape;
  final String text;
  final bool isIcon;
  final IconData? icon;

  final Color? bgColor;
  final Color tColor;
  final Function? onPress;
  final double radius;
  final double fSize;
  final FontWeight fontWeight;
  final Alignment textAlign;

  const CommonButton(
      {Key? key,
      this.tColor = Colors.white,
      required this.text,
      this.onPress,
      this.radius = 11,
      this.fSize = 14,
      this.bgColor = Colors.orange,
      this.fontWeight = FontWeight.normal,
      this.textAlign = Alignment.center,
      this.customShape = 1,
      this.isIcon = false,
      this.icon = Icons.save})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isIcon == false
        ? ElevatedButton(
            onPressed: () => onPress!(),
            child: Text(
              text,
              style: TextStyle(
                  color: tColor,
                  fontSize: fSize,
                  fontWeight: fontWeight,
                  decoration: TextDecoration.none),
            ),
            style: customShape == 1
                ? ElevatedButton.styleFrom(
                    backgroundColor: bgColor, shape: const StadiumBorder())
                : customShape == 2
                    ? ElevatedButton.styleFrom(
                        backgroundColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      )
                    : customShape == 3
                        ? ElevatedButton.styleFrom(
                            backgroundColor: bgColor,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(24),
                          )
                        : customShape == 4
                            ? OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const StadiumBorder())
                            : customShape == 5
                                ? OutlinedButton.styleFrom(
                                    shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ))
                                : customShape == 6
                                    ? OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(24))
                                    : OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(24)),
          )
        : ElevatedButton.icon(
            onPressed: () => onPress!(),
            icon: Icon(icon!),
            label: Text(text),
            style: customShape == 1
                ? ElevatedButton.styleFrom(shape: const StadiumBorder())
                : customShape == 2
                    ? ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      )
                    : customShape == 3
                        ? ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(24),
                          )
                        : customShape == 4
                            ? OutlinedButton.styleFrom(
                                shape: const StadiumBorder())
                            : customShape == 5
                                ? OutlinedButton.styleFrom(
                                    shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ))
                                : customShape == 6
                                    ? OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(24))
                                    : OutlinedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(24)),
          );
  }
}

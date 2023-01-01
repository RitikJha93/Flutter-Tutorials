import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconWidget extends StatelessWidget {
  final IconData icons;
  final Color iconsColor;
  const IconWidget(this.icons, this.iconsColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: iconsColor.withOpacity(0.2)),
        child: Icon(
          icons,
          color: iconsColor,
        ),
      ),
    );
  }
}

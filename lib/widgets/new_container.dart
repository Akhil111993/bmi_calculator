import 'package:flutter/cupertino.dart';

import '../constants.dart';

class ContainerNew extends StatelessWidget {
  final Color color;
  final Widget? childWidget;
  final Function()? onPressed;
  ContainerNew({required this.color, this.childWidget, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: childWidget,
        margin: const EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kCornerRadius),
          color: color,
        ),
      ),
    );
  }
}

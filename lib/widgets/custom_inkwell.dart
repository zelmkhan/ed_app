import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final double? borderRadius;
  const CustomInkWell({super.key, required this.child, required this.onTap, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      onTap: onTap,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

Future replaceWindow(BuildContext context, window) =>
    Navigator.of(context).push(MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => window));
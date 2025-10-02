import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  MediaQueryData get media => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  void showSnack(String message, {Duration duration = const Duration(seconds: 2)}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), duration: duration),
    );
  }
}

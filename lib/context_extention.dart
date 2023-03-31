import 'package:flutter/material.dart';
import 'package:port/themes/theme.dart';

extension BuildContextExt on BuildContext {
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  ThemeTextStyles get textStyles => Theme.of(this).extension<ThemeTextStyles>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
}

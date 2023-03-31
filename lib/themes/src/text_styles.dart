part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle appTitle;
  final TextStyle appDescription;
  final TextStyle labelStyle;

  ThemeTextStyles({
    required this.appTitle,
    required this.appDescription,
    required this.labelStyle,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appTitle,
    TextStyle? labelStyle,
    TextStyle? appDescription,
  }) {
    return ThemeTextStyles(
      appTitle: appTitle ?? this.appTitle,
      appDescription: appDescription ?? this.appDescription,
      labelStyle: labelStyle ?? this.labelStyle,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
    );
  }

  static get light => ThemeTextStyles(
        appTitle: displayLarge.copyWith(
          color: AppColors.darkerGrey,
          fontWeight: FontWeight.w700,
        ),
        appDescription: displaySmall.copyWith(
          color: AppColors.darkerGrey,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: displayLarge.copyWith(
          fontWeight: FontWeight.w500,
        ),
      );

  static get dark => ThemeTextStyles(
        appTitle: displayLarge.copyWith(
          color: AppColors.lighterGrey,
          fontWeight: FontWeight.w700,
        ),
        appDescription: displaySmall.copyWith(
          color: AppColors.lightGrey,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: displayLarge.copyWith(
          fontWeight: FontWeight.w500,
        ),
      );
}

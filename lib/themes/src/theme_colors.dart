part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color increaseColor;

  const ThemeColors({
    required this.increaseColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? filterButtonFillColor,
    Color? increaseColor,
  }) {
    return ThemeColors(
      increaseColor: increaseColor ?? this.increaseColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      increaseColor: Color.lerp(increaseColor, other.increaseColor, t)!,
    );
  }

  static get light => const ThemeColors(
        increaseColor: AppColors.red,
      );

  static get dark => const ThemeColors(
        increaseColor: AppColors.black,
      );
}

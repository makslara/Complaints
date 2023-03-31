part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
    ],
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.black,
      titleTextStyle: displayLarge.copyWith(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: displayLarge.copyWith(
        color: AppColors.white,
      ),
    ),
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}

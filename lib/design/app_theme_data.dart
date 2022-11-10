import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    fontFamily: "Rubik",

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.primary90,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary90,
      error: AppColors.warning,

      onError: Colors.indigo,
      background: Colors.amber,
      onBackground: Colors.teal,
      surface: Colors.cyan,
      onSurface: AppColors.primary80,
    ),
    scaffoldBackgroundColor: AppColors.gray,

    textTheme: const TextTheme(
      button: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.4,
      ),
    ),

    appBarTheme: AppBarTheme(
      elevation: 1,
      shadowColor: const Color(0xffE4E3E3).withOpacity(0.25),
      color: AppColors.secondary,
      titleTextStyle: const TextStyle(
        color: AppColors.blackText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.4,
      ),
      iconTheme: const IconThemeData(color: AppColors.blackText),
      titleSpacing: 16,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF273469)),
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.primary90,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.primary90,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.info,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.warning,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: AppColors.warning,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      errorStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.warning90,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.primary40,
      ),
      iconColor: AppColors.primary90,
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.primary90),
      checkColor: MaterialStateProperty.all(AppColors.secondary90),
      splashRadius: 28,
      side: const BorderSide(color: AppColors.primary90),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    cardTheme: const CardTheme(
      color: AppColors.secondary90,
      shadowColor: Colors.transparent,
    ),
    dividerColor: AppColors.primary90,
  );

/*  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(
      0xFF273469,
      <int, Color>{
        50: Color(0xffF4F5F7),
        100: Color(0xffEAEBF0),
        200: Color(0xffD4D6E1),
        300: Color(0xffBFC3D2),
        400: Color(0xffA9AEC3),
        500: Color(0xff939AB4),
        600: Color(0xff7D85A5),
        700: Color(0xff687196),
        800: Color(0xff525D87),
        900: Color(0xff3D4978)
      },
    ),

    primaryColor: const Color(0xFF273469),
    scaffoldBackgroundColor: const Color(0xffF2F2F2), // +

    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xFF273469)),
      splashRadius: 28,
      side: const BorderSide(color: Color(0xFF273469)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        side: const BorderSide(color: Color(0xFF273469)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      headline2: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      headline3: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      subtitle2: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF273469)),
      bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );*/
}

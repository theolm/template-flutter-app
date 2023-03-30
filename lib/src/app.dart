import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/settings/theme/app_theme.dart';
import 'main_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF795548);

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;
        if (lightDynamic != null && darkDynamic != null) {
          lightColorScheme = lightDynamic.harmonized();
          darkColorScheme = darkDynamic.harmonized();
        } else {
          lightColorScheme = ColorScheme.fromSeed(
            seedColor: primaryColor,
          );
          darkColorScheme = ColorScheme.fromSeed(
            seedColor: primaryColor,
            brightness: Brightness.dark,
          );
        }
        return MaterialApp(
          title: 'Flutter Demo',
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
          theme: getLightTheme(lightColorScheme),
          darkTheme: getDarkTheme(darkColorScheme),
        );
      },
    );
  }

  ThemeData getLightTheme(ColorScheme lightColorScheme) {
    return ThemeData.from(
      colorScheme: lightColorScheme,
    ).copyWith(
      colorScheme: lightColorScheme,
      dialogTheme: dialogTheme,
      timePickerTheme: timePickerTheme,
      appBarTheme: appBarThemeLight(lightColorScheme),
      useMaterial3: true,
      textTheme: GoogleFonts.outfitTextTheme(
        ThemeData.light().textTheme,
      ),
      scaffoldBackgroundColor: lightColorScheme.background,
      dialogBackgroundColor: lightColorScheme.background,
      navigationBarTheme: navigationBarThemeData(lightColorScheme),
      applyElevationOverlayColor: true,
      inputDecorationTheme: inputDecorationTheme,
      elevatedButtonTheme: elevatedButtonTheme(
        context,
        lightColorScheme,
      ),
      extensions: [lightCustomColor],
      dividerTheme: DividerThemeData(
        color: ThemeData.light().dividerColor,
      ),
    );
  }

  ThemeData getDarkTheme(ColorScheme darkColorScheme) {
    return ThemeData.from(
      colorScheme: darkColorScheme,
    ).copyWith(
      colorScheme: darkColorScheme,
      dialogTheme: dialogTheme,
      timePickerTheme: timePickerTheme,
      appBarTheme: appBarThemeDark(darkColorScheme),
      useMaterial3: true,
      textTheme: GoogleFonts.outfitTextTheme(
        ThemeData.dark().textTheme,
      ),
      scaffoldBackgroundColor: darkColorScheme.background,
      dialogBackgroundColor: darkColorScheme.background,
      navigationBarTheme: navigationBarThemeData(darkColorScheme),
      applyElevationOverlayColor: true,
      inputDecorationTheme: inputDecorationTheme,
      elevatedButtonTheme: elevatedButtonTheme(
        context,
        darkColorScheme,
      ),
      extensions: [darkCustomColor],
      dividerTheme: DividerThemeData(
        color: ThemeData.dark().dividerColor,
      ),
    );
  }
}

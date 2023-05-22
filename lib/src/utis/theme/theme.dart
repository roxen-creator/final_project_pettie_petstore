import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/utis/theme/widget_theme/elevated_button_theme.dart';
import 'package:pettie_petstore/src/utis/theme/widget_theme/outlined_button_theme.dart';
import 'package:pettie_petstore/src/utis/theme/widget_theme/text_feild_theme.dart';
import 'package:pettie_petstore/src/utis/theme/widget_theme/text_theme.dart';

class PAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTHeme.lightTextTheme,
    outlinedButtonTheme: POutlinedButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTHeme.darkTextTheme,
    outlinedButtonTheme: POutlinedButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darktInputDecorationTheme,
  );
}

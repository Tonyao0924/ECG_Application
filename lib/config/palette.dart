import 'package:flutter/material.dart';
class Palette {
  static MaterialColor mycolor = const MaterialColor(
    0xff709E94, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff709E94 ),//10%
      100: const Color(0xff709E94),//20%
      200: const Color(0xff709E94),//30%
      300: const Color(0xff709E94),//40%
      400: const Color(0xff709E94),//50%
      500: const Color(0xff709E94),//60%
      600: const Color(0xff709E94),//70%
      700: const Color(0xff709E94),//80%
      800: const Color(0xff709E94),//90%
      900: const Color(0xff709E94),//100%
    },
  );

} 
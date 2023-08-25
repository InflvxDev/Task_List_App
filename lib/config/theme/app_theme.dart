import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme () => ThemeData (
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0f007cb8)),
        useMaterial3: true,
      );
}
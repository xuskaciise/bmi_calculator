import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(BMICalculcultor());
}

class BMICalculcultor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff0A0E1D),
        appBarTheme:  AppBarTheme(
          backgroundColor: Color(0xFF0A0E1D),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

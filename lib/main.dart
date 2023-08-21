import 'package:flutter/material.dart';
import 'screen/Input.dart';

void main() {
  runApp(const bmiCalc());
}

class bmiCalc extends StatelessWidget {
  const bmiCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme:ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF253D2F)
        ),
      scaffoldBackgroundColor: Color(0xFF253D2F)
      ),
      home: Input(),
    );
  }
}





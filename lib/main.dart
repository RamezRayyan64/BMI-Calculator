import 'package:bmi_calculator_app_ui/pages/input_screen.dart';
import 'package:bmi_calculator_app_ui/pages/screen.dart';
import 'package:bmi_calculator_app_ui/themes/darkTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calculator_app_ui/pages/result_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xFF0A0E21)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      initialRoute: InputScreen.id,
      routes: {
        InputScreen.id: (context) => const InputScreen(),
        ResultScreen.id: (context) => const ResultScreen(),
        Screen.id: (context) => const Screen(),
      },
    );
  }
}

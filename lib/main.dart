import 'package:bmi_calculator/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xff0a0e21)),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
        primaryColor: const Color(0xff0a0e21),
      ),
      // scaffoldBackgroundColor:

      home: const HomePage(),
    );
  }
}

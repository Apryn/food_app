import 'package:flutter/material.dart';
import 'package:food_app/Screen/Home/home_screen.dart';
import 'package:food_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: bgcolor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
              headline5:
                  TextStyle(fontWeight: FontWeight.bold, color: headline))),
      home: const HomeScreen(),
    );
  }
}

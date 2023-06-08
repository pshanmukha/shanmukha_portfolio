import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/screens/home/home_screen.dart';

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
      title: 'Shanmukha Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
          disabledColor: Colors.grey.shade200,
          iconTheme: const IconThemeData(
           color: primaryColor
          ),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyLarge: const TextStyle(color: titleTextColor),
          bodyMedium: const TextStyle(color: bodyTextColor),
        )
      ),
      home: const HomeScreen(),
    );
  }
}

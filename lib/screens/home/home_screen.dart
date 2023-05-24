import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/screens/home/components/contactform.dart';
import 'package:shanmukha_portfolio/screens/home/components/home_banner.dart';
import 'package:shanmukha_portfolio/screens/home/components/my_certifications.dart';
import 'package:shanmukha_portfolio/screens/home/components/experiences.dart';
import 'package:shanmukha_portfolio/screens/home/components/projects.dart';
import 'package:shanmukha_portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      Projects(),
      MyCertifications(),
      Experiences(),
      ContactForm(),
    ]);
  }
}



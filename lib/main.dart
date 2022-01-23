import 'package:flutter/material.dart';
import 'package:kandostu/screens/homepage_screen.dart';
import 'package:kandostu/screens/landing_screen.dart';
import 'package:kandostu/screens/login_screen.dart';
import 'package:kandostu/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kan Dostu",
      theme: ThemeData(
        fontFamily: "Roboto",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFEC5545),
          primary: const Color(0xFF164CD9),
          surface: const Color(0xFF59AFC4),
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/homepage': (context) => const HomePageScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

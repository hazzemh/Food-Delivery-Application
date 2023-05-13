import 'package:flutter/material.dart';
import 'package:food_delivery/views/home_page.dart';
import 'package:food_delivery/views/intro_screen.dart';
import 'package:food_delivery/views/sign_in_page.dart';
import 'package:food_delivery/views/sign_up_page.dart';
import 'package:food_delivery/views/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery",
      home: const IntroScreen(),
      routes: {
        'intro' :(context) => const IntroScreen(),
        'welcomepage':(context) => const WelcomePage(),
        'homepage':(context) => const HomePage(),
        'signin':(context) => const SignIn(),
        'signup':(context) => const SignUp()
      },
    );
  }
}




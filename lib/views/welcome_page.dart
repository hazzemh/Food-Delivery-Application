import 'package:flutter/material.dart';
import 'package:food_delivery/shared/shared_widgets/shared_widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'assets/images/burger.jpg',
                        height: 500.0,
                        width: 500.0,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signin');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfff55b03),
                        fixedSize: const Size(450.0, 50.0),
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(8.0)),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 221, 220, 220),
                        fixedSize: const Size(450.0, 50.0),
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(8.0)),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              appFooter(),
            ],
          ),
        ),
      ]),
    );
  }
}
